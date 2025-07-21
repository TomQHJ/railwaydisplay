<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="车次" prop="trainNum">
        <el-input
          v-model="queryParams.trainNum"
          placeholder="请输入车次"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="上车人数" prop="tTp">
        <el-input
          v-model="queryParams.tTp"
          placeholder="请输入上车人数"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="下车人数" prop="dTp">
        <el-input
          v-model="queryParams.dTp"
          placeholder="请输入下车人数"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="车站" prop="stationNum">
        <!-- <el-input
          v-model="queryParams.stationNum"
          placeholder="请输入车站编号"
          clearable
          @keyup.enter="handleQuery"
        /> -->
        <el-select v-model="queryParams.stationNum" placeholder="请选择车站" filterable clearable>
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
          v-hasPermi="['peo:peo:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['peo:peo:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['peo:peo:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['peo:peo:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="peoList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" align="center" prop="id" />
      <el-table-column label="车次" align="center" prop="trainNum" />
      <el-table-column label="上车人数" align="center" prop="tTp" />
      <el-table-column label="下车人数" align="center" prop="dTp" />
      <el-table-column label="车站" align="center" prop="station.stationName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['peo:peo:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['peo:peo:remove']">删除</el-button>
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

    <!-- 添加或修改车站今日列车客流信息对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="peoRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="车次" prop="trainNum">
          <el-input v-model="form.trainNum" placeholder="请输入车次" />
        </el-form-item>
        <el-form-item label="上车人数" prop="tTp">
          <el-input v-model="form.tTp" placeholder="请输入上车人数" />
        </el-form-item>
        <el-form-item label="下车人数" prop="dTp">
          <el-input v-model="form.dTp" placeholder="请输入下车人数" />
        </el-form-item>
        <el-form-item label="车站" prop="stationNum">
          <el-select v-model="form.stationNum" placeholder="请选择车站" filterable clearable>
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

<script setup name="Peo">
import { listPeo, getPeo, delPeo, addPeo, updatePeo, listAll } from "@/api/peo/peo"
import { listAllStation } from "@/api/stationman/station"
import { onMounted } from "vue"

const { proxy } = getCurrentInstance()

const peoList = ref([])
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
    trainNum: null,
    tTp: null,
    dTp: null,
    stationNum: null
  },
  rules: {
  }
})

const { queryParams, form, rules } = toRefs(data)

onMounted(() => {
  getAllList()
  getList()
})

const options = ref([])


function getAllList(){
  listAllStation().then(response => {
    options.value = response.data
  })
}

/** 查询车站今日列车客流信息列表 */
function getList() {
  loading.value = true
  listPeo(queryParams.value).then(response => {
    peoList.value = response.rows
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
    trainNum: null,
    tTp: null,
    dTp: null,
    stationNum: null
  }
  proxy.resetForm("peoRef")
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
  title.value = "添加车站今日列车客流信息"
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset()
  const _id = row.id || ids.value
  getPeo(_id).then(response => {
    form.value = response.data
    open.value = true
    title.value = "修改车站今日列车客流信息"
  })
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["peoRef"].validate(valid => {
    if (valid) {
      if (form.value.id != null) {
        updatePeo(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功")
          open.value = false
          getList()
        })
      } else {
        addPeo(form.value).then(response => {
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
  proxy.$modal.confirm('是否确认删除车站今日列车客流信息编号为"' + _ids + '"的数据项？').then(function() {
    return delPeo(_ids)
  }).then(() => {
    getList()
    proxy.$modal.msgSuccess("删除成功")
  }).catch(() => {})
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('peo/peo/export', {
    ...queryParams.value
  }, `peo_${new Date().getTime()}.xlsx`)
}

getList()
</script>
