<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="车站名称" prop="stationName">
        <el-input
          v-model="queryParams.stationName"
          placeholder="请输入车站名称"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="车站缩写" prop="sName">
        <el-input
          v-model="queryParams.sName"
          placeholder="请输入车站缩写"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="车站等级" prop="stationGardeNum">
        <el-select v-model="queryParams.stationGardeNum" placeholder="请选择车站等级" filterable clearable>
          <el-option
            clearable
            @keyup.enter.native="handleQuery"
            v-for="item in options"
            :key="item.stationGardeNum"
            :label="item.stationGarde" 
            :value="item.stationGardeNum">
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
          v-hasPermi="['stationman:station:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['stationman:station:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['stationman:station:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['stationman:station:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="stationList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="车站编号" align="center" prop="stationNum" />
      <el-table-column label="车站名称" align="center" prop="stationName" />
      <el-table-column label="车站缩写" align="center" prop="sName" />
      <el-table-column label="车站等级" align="center" prop="stationGarde.stationGarde" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['stationman:station:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['stationman:station:remove']">删除</el-button>
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

    <!-- 添加或修改车站信息管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="stationRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="车站名称" prop="stationName">
          <el-input v-model="form.stationName" placeholder="请输入车站名称" />
        </el-form-item>
        <el-form-item label="车站缩写" prop="sName">
          <el-input v-model="form.sName" placeholder="请输入车站缩写" />
        </el-form-item>
        <el-form-item label="车站等级" prop="stationGrade">
          <el-select v-model="form.stationGardeNum" placeholder="请选择车站等级" filterable clearable>
            <el-option
              clearable
              v-for="item in options"
              :key="item.stationGardeNum"
              :label="item.stationGarde" 
              :value="item.stationGardeNum">
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

<script setup name="Station">
import { listStation, getStation, delStation, addStation, updateStation } from "@/api/stationman/station"
import { listAllGarde } from "@/api/stationman/garde"
import { onMounted } from "vue"

const { proxy } = getCurrentInstance()

const stationList = ref([])
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
    stationName: null,
    sName: null,
    stationGrade: null
  },
  rules: {
  }
})



const { queryParams, form, rules } = toRefs(data)

onMounted(() => {
  getAllList()
  // getList()
})


const options = ref([])
function getAllList(){
  listAllGarde().then(response => {
    options.value = response.data
  })
}

/** 查询车站信息管理列表 */
function getList() {
  loading.value = true
  listStation(queryParams.value).then(response => {
    stationList.value = response.rows
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
    stationNum: null,
    stationName: null,
    sName: null,
    stationGrade: null
  }
  proxy.resetForm("stationRef")
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
  ids.value = selection.map(item => item.stationNum)
  single.value = selection.length != 1
  multiple.value = !selection.length
}

/** 新增按钮操作 */
function handleAdd() {
  reset()
  open.value = true
  title.value = "添加车站信息管理"
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset()
  const _stationNum = row.stationNum || ids.value
  getStation(_stationNum).then(response => {
    form.value = response.data
    open.value = true
    title.value = "修改车站信息管理"
  })
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["stationRef"].validate(valid => {
    if (valid) {
      if (form.value.stationNum != null) {
        updateStation(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功")
          open.value = false
          getList()
        })
      } else {
        addStation(form.value).then(response => {
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
  const _stationNums = row.stationNum || ids.value
  proxy.$modal.confirm('是否确认删除车站信息管理编号为"' + _stationNums + '"的数据项？').then(function() {
    return delStation(_stationNums)
  }).then(() => {
    getList()
    proxy.$modal.msgSuccess("删除成功")
  }).catch(() => {})
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('stationman/station/export', {
    ...queryParams.value
  }, `station_${new Date().getTime()}.xlsx`)
}

getList()

// const train_station_grade = ref([
//   {
//   label: '特等站',
//   value: '0'
//   }, 
//   {
//   label: '一等站',
//   value: '1'
//   },
//   {
//   label: '二等站',
//   value: '2'
//   },
//   {
//   label: '三等站',
//   value: '3'
//   }
// ])

</script>
