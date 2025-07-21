<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="设备id" prop="deviceId">
        <el-input
          v-model="queryParams.deviceId"
          placeholder="请输入设备id"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="维护时间" prop="maintenanceDate">
        <el-date-picker clearable
          v-model="queryParams.maintenanceDate"
          type="datetime"
          value-format="YYYY-MM-DD HH:mm:ss"
          placeholder="请选择维护时间"
          @keyup.enter="handleQuery">
        </el-date-picker>
        <!-- <el-date-picker
          v-model="queryParams.maintenanceDate"
          type="datetime"
          placeholder="请选择维护时间"
          format="YYYY/MM/DD HH:mm:ss"
        /> -->
      </el-form-item>
      <el-form-item label="操作人员" prop="operator">
        <el-input
          v-model="queryParams.operator"
          placeholder="请输入操作人员"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="故障原因" prop="description">
        <el-input
          v-model="queryParams.description"
          placeholder="请输入故障原因"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="处理结果" prop="result">
        <!-- <el-input
          v-model="queryParams.result"
          placeholder="请输入处理结果"
          clearable
          @keyup.enter="handleQuery"
        /> -->
        <el-select v-model="queryParams.result" placeholder="请选择处理结果" filterable clearable>
          <el-option
            clearable
            @keyup.enter.native="handleQuery"
            v-for="item in options"
            :key="item.stationDeviceResultId"
            :label="item.stationDeviceResult" 
            :value="item.stationDeviceResultId">
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
          v-hasPermi="['maintenance:maintenance:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['maintenance:maintenance:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['maintenance:maintenance:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['maintenance:maintenance:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="maintenanceList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="记录id" align="center" prop="logId" />
      <el-table-column label="设备id" align="center" prop="deviceId" />
      <el-table-column label="维护时间" align="center" prop="maintenanceDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.maintenanceDate, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="维护类型" align="center" prop="maintenanceType" />
      <el-table-column label="操作人员" align="center" prop="operator" />
      <el-table-column label="故障原因" align="center" prop="description" />
      <el-table-column label="处理结果" align="center" prop="stationDeviceResult.stationDeviceResult" />
      <el-table-column label="现场照片" align="center" prop="attachment" width="100">
        <template #default="scope">
          <image-preview :src="scope.row.attachment" :width="50" :height="50"/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['maintenance:maintenance:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['maintenance:maintenance:remove']">删除</el-button>
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

    <!-- 添加或修改车站设备维护对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="maintenanceRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="设备id" prop="deviceId">
          <el-input v-model="form.deviceId" placeholder="请输入设备id" />
        </el-form-item>
        <el-form-item label="维护时间" prop="maintenanceDate">
          <!-- <el-date-picker clearable
            v-model="form.maintenanceDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择维护时间">
          </el-date-picker> -->
          <el-date-picker
            v-model="form.maintenanceDate"
            type="datetime"
            placeholder="请选择维护时间"

            value-format="YYYY-MM-DD HH:mm:ss"
          />
        </el-form-item>
        <el-form-item label="维护类型" prop="maintenanceType">
          <el-input v-model="form.maintenanceType" placeholder="请输入维护类型" />
        </el-form-item>
        <el-form-item label="操作人员" prop="operator">
          <el-input v-model="form.operator" placeholder="请输入操作人员" />
        </el-form-item>
        <el-form-item label="故障原因" prop="description">
          <el-input v-model="form.description" placeholder="请输入故障原因" />
        </el-form-item>
        <el-form-item label="处理结果" prop="result">
          <el-select v-model="form.result" placeholder="请选择处理结果" filterable clearable>
            <el-option
              clearable
              @keyup.enter.native="handleQuery"
              v-for="item in options"
              :key="item.stationDeviceResultId"
              :label="item.stationDeviceResult" 
              :value="item.stationDeviceResultId">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="现场照片" prop="attachment">
          <image-upload v-model="form.attachment"/>
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

<script setup name="Maintenance">
import { listMaintenance, getMaintenance, delMaintenance, addMaintenance, updateMaintenance ,listAllMaintenance} from "@/api/maintenance/maintenance"
import { listAllResult } from "@/api/deviceresult/result"
import { onMounted } from "vue"
const { proxy } = getCurrentInstance()

const maintenanceList = ref([])
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
    deviceId: null,
    maintenanceDate: null,
    maintenanceType: null,
    operator: null,
    description: null,
    result: null,
    attachment: null
  },
  rules: {
  }
})

const { queryParams, form, rules } = toRefs(data)

onMounted(() => {
  getAllList()
  listAllMaintenance()
})

const options = ref([])
function getAllList(){
  listAllResult().then(response => {
    options.value = response.data
  })
}

/** 查询车站设备维护列表 */
function getList() {
  loading.value = true
  listMaintenance(queryParams.value).then(response => {
    maintenanceList.value = response.rows
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
    logId: null,
    deviceId: null,
    maintenanceDate: null,
    maintenanceType: null,
    operator: null,
    description: null,
    result: null,
    attachment: null
  }
  proxy.resetForm("maintenanceRef")
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
  ids.value = selection.map(item => item.logId)
  single.value = selection.length != 1
  multiple.value = !selection.length
}

/** 新增按钮操作 */
function handleAdd() {
  reset()
  open.value = true
  title.value = "添加车站设备维护"
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset()
  const _logId = row.logId || ids.value
  getMaintenance(_logId).then(response => {
    form.value = response.data
    open.value = true
    title.value = "修改车站设备维护"
  })
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["maintenanceRef"].validate(valid => {
    if (valid) {
      if (form.value.logId != null) {
        updateMaintenance(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功")
          open.value = false
          getList()
        })
      } else {
        addMaintenance(form.value).then(response => {
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
  const _logIds = row.logId || ids.value
  proxy.$modal.confirm('是否确认删除车站设备维护编号为"' + _logIds + '"的数据项？').then(function() {
    return delMaintenance(_logIds)
  }).then(() => {
    getList()
    proxy.$modal.msgSuccess("删除成功")
  }).catch(() => {})
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('maintenance/maintenance/export', {
    ...queryParams.value
  }, `maintenance_${new Date().getTime()}.xlsx`)
}

getList()
</script>
