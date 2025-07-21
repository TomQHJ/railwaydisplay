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
      <el-form-item label="始发站" prop="depStation">
        <el-input
          v-model="queryParams.depStation"
          placeholder="请输入始发站"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="终到站" prop="terStation">
        <el-input
          v-model="queryParams.terStation"
          placeholder="请输入终到站"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="发车时间" prop="startTime">
        <el-time-picker clearable
           v-model="queryParams.startTime"
           format="HH:mm"
           value-format="HH:mm"
           editable:true
           :show-seconds="false"
           placeholder="请选择发车时间"
           >
        </el-time-picker>
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
          v-hasPermi="['rplatmsg:rplatmsg:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['rplatmsg:rplatmsg:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['rplatmsg:rplatmsg:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['rplatmsg:rplatmsg:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="rplatmsgList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="站台编号" align="center" prop="platNum" />
      <el-table-column label="车次" align="center" prop="trainNum" />
      <el-table-column label="始发站" align="center" prop="depStation" />
      <el-table-column label="终到站" align="center" prop="terStation" />
      <el-table-column label="发车时间" align="center" prop="startTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.startTime, '{h}:{i}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['rplatmsg:rplatmsg:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['rplatmsg:rplatmsg:remove']">删除</el-button>
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

    <!-- 添加或修改站台信息对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="rplatmsgRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="车次" prop="trainNum">
          <el-input v-model="form.trainNum" placeholder="请输入车次" />
        </el-form-item>
        <el-form-item label="始发站" prop="depStation">
          <el-input v-model="form.depStation" placeholder="请输入始发站" />
        </el-form-item>
        <el-form-item label="终到站" prop="terStation">
          <el-input v-model="form.terStation" placeholder="请输入终到站" />
        </el-form-item>
        <el-form-item label="发车时间" prop="startTime">
          <!-- <el-date-picker clearable
            v-model="form.startTime"
            type="date"
            value-format="HH:MM:SS"
            placeholder="请选择发车时间">
          </el-date-picker> -->
          <el-time-picker clearable
           v-model="form.startTime"
           type="date"
           value-format="HH:mm:ss"
           editable:true
           placeholder="请选择发车时间">
          </el-time-picker>
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
  
  <!-- 预留显示区 待定 -->
  <!-- <div class="plat_iot">
    <div class="top-time">19:30</div>
  </div> -->
</template>

<script setup name="Rplatmsg">
import { listRplatmsg, getRplatmsg, delRplatmsg, addRplatmsg, updateRplatmsg } from "@/api/rplatmsg/rplatmsg"

const { proxy } = getCurrentInstance()

const rplatmsgList = ref([])
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
    depStation: null,
    terStation: null,
    startTime: null
  },
  rules: {
  }
})

const { queryParams, form, rules } = toRefs(data)

/** 查询站台信息列表 */
function getList() {
  loading.value = true
  listRplatmsg(queryParams.value).then(response => {
    rplatmsgList.value = response.rows
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
    platNum: null,
    trainNum: null,
    depStation: null,
    terStation: null,
    startTime: null
  }
  proxy.resetForm("rplatmsgRef")
}

/** 搜索按钮操作 */
function handleQuery() {
  // 补全发车时间为“时:分:秒”
  if (queryParams.value.startTime && queryParams.value.startTime.length === 5) {
    queryParams.value.startTime = queryParams.value.startTime + ':00'
  }
  queryParams.value.pageNum = 1
  getList()
  console.log(queryParams)
}

/** 重置按钮操作 */
function resetQuery() {
  proxy.resetForm("queryRef")
  handleQuery()
}

// 多选框选中数据
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.platNum)
  single.value = selection.length != 1
  multiple.value = !selection.length
}

/** 新增按钮操作 */
function handleAdd() {
  reset()
  open.value = true
  title.value = "添加站台信息"
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset()
  const _platNum = row.platNum || ids.value
  getRplatmsg(_platNum).then(response => {
    form.value = response.data
    open.value = true
    title.value = "修改站台信息"
  })
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["rplatmsgRef"].validate(valid => {
    if (valid) {
      if (form.value.platNum != null) {
        updateRplatmsg(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功")
          open.value = false
          getList()
        })
      } else {
        addRplatmsg(form.value).then(response => {
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
  const _platNums = row.platNum || ids.value
  proxy.$modal.confirm('是否确认删除站台信息编号为"' + _platNums + '"的数据项？').then(function() {
    return delRplatmsg(_platNums)
  }).then(() => {
    getList()
    proxy.$modal.msgSuccess("删除成功")
  }).catch(() => {})
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('rplatmsg/rplatmsg/export', {
    ...queryParams.value
  }, `rplatmsg_${new Date().getTime()}.xlsx`)
}

getList()
</script>

<style>
/* .plat_iot{
  width: 200px;
  height: 100px;
  background-color: #0b0366;
} */
</style>
