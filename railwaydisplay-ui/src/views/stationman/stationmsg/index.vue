<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="车站名称" prop="stationNum">
        <!-- <el-input
          v-model="queryParams.stationNum"
          placeholder="请输入车站编号"
          clearable
          @keyup.enter="handleQuery"
        /> -->
        <el-select v-model="queryParams.stationNum" placeholder="请选择搜索的车站" filterable clearable
        :style="{width: '90%'}">
          <el-option
            clearable
            @keyup.enter.native="handleQuery"
            v-for="item in options"
            :key="item.stationNum"
            :label="item.stationName"
            :value="item.stationNum">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="发送人数" prop="sendPeop">
        <el-input
          v-model="queryParams.sendPeop"
          placeholder="请输入发送人数"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="到达人数" prop="arrivePeop">
        <el-input
          v-model="queryParams.arrivePeop"
          placeholder="请输入到达人数"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
          v-hasPermi="['stationman:stationmsg:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['stationman:stationmsg:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['stationman:stationmsg:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['stationman:stationmsg:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="stationmsgList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <!-- <el-table-column label="id" align="center" prop="id" /> -->
      <el-table-column label="车站名称" align="center" prop="station.stationName" />
      <el-table-column label="发送人数" align="center" prop="sendPeop" />
      <el-table-column label="到达人数" align="center" prop="arrivePeop" />
      <!-- 到发总数 (新加入) -->
      <el-table-column label="到发总数" align="center" :formatter="formatSumPeop" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['stationman:stationmsg:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['stationman:stationmsg:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改车站发送人数对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="stationmsgRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="选择车站" prop="stationNum">
          <!-- <el-input v-model="form.stationNum" placeholder="请输入车站编号" /> -->
          <el-select v-model="form.stationNum" placeholder="请选择对应的车站" filterable clearable
          :style="{width: '100%'}">
          <el-option
            clearable
            @keyup.enter.native="handleQuery"
            v-for="item in options"
            :key="item.stationNum"
            :label="item.stationName"
            :value="item.stationNum">
          </el-option>
        </el-select>

        </el-form-item>
        <el-form-item label="发送人数" prop="sendPeop">
          <el-input v-model="form.sendPeop" placeholder="请输入发送人数" />
        </el-form-item>
        <el-form-item label="到达人数" prop="arrivePeop">
          <el-input v-model="form.arrivePeop" placeholder="请输入到达人数" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup name="Stationmsg">
import {  listStationmsg, getStationmsg, delStationmsg, addStationmsg, updateStationmsg } from "@/api/stationman/stationmsg"
import { listAllStation } from "@/api/stationman/station"
import { onMounted } from "vue"

const options = ref([])


const { proxy } = getCurrentInstance()

const stationmsgList = ref([])
const open = ref(false)
const loading = ref(true)
const showSearch = ref(true)
const ids = ref([])
const single = ref(true)
const multiple = ref(true)
const total = ref(0)
const title = ref("")

const data = reactive({
  form: {},
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    stationNum: null,
    sendPeop: null,
    arrivePeop: null
  },
  rules: {
  }
})

const { queryParams, form, rules } = toRefs(data)

/* <!-- 到发总数 (新加入) --> */
function formatSumPeop(rows) {
  return rows.sendPeop + rows.arrivePeop
}

function getAllList(){
  listAllStation().then(response => {
    options.value = response.data
  })
}

onMounted(() => {
  getAllList()
  getList()
})

/** 查询车站发送人数列表 */
function getList() {
  loading.value = true
  listStationmsg(queryParams.value).then(response => {
    stationmsgList.value = response.rows
    total.value = response.total
    loading.value = false
  })
}

// 取消按钮
function cancel() {
  open.value = false
  reset()
}

// 表单重置
function reset() {
  form.value = {
    id: null,
    stationNum: null,
    sendPeop: null,
    arrivePeop: null
  }
  proxy.resetForm("stationmsgRef")
}

/** 搜索按钮操作 */
function handleQuery() {
  queryParams.value.pageNum = 1
  getList()
}

/** 重置按钮操作 */
function resetQuery() {
  proxy.resetForm("queryRef")
  handleQuery()
}

// 多选框选中数据
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.id)
  single.value = selection.length != 1
  multiple.value = !selection.length
}

/** 新增按钮操作 */
function handleAdd() {
  reset()
  open.value = true
  title.value = "添加车站发送人数"
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset()
  const _id = row.id || ids.value
  getStationmsg(_id).then(response => {
    form.value = response.data
    open.value = true
    title.value = "修改车站发送人数"
  })
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["stationmsgRef"].validate(valid => {
    if (valid) {
      if (form.value.id != null) {
        updateStationmsg(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功")
          open.value = false
          getList()
        })
      } else {
        addStationmsg(form.value).then(response => {
          proxy.$modal.msgSuccess("新增成功")
          open.value = false
          getList()
        })
      }
    }
  })
}

/** 删除按钮操作 */
function handleDelete(row) {
  const _ids = row.id || ids.value
  proxy.$modal.confirm('是否确认删除车站发送人数编号为"' + _ids + '"的数据项？').then(function() {
    return delStationmsg(_ids)
  }).then(() => {
    getList()
    proxy.$modal.msgSuccess("删除成功")
  }).catch(() => {})
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('stationman/stationmsg/export', {
    ...queryParams.value
  }, `stationmsg_${new Date().getTime()}.xlsx`)
}

getList()
</script>
