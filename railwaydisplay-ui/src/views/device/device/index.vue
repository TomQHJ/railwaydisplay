<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="设备名称" prop="deviceName">
        <el-input
          v-model="queryParams.deviceName"
          placeholder="请输入设备名称"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="设备分类" prop="deviceType">
        <!-- <el-input
          v-model="queryParams.deviceType"
          placeholder="请输入设备名称"
          clearable
          @keyup.enter="handleQuery"
        /> -->
        <el-select v-model="queryParams.deviceType" placeholder="请选择设备分类" filterable clearable>
          <el-option
            clearable
            @keyup.enter.native="handleQuery"
            v-for="item in options"
            :key="item.stationDeviceId"
            :label="item.stationDeviceName" 
            :value="item.stationDeviceId">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="品牌" prop="brand">
        <el-input
          v-model="queryParams.brand"
          placeholder="请输入品牌"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="型号" prop="model">
        <el-input
          v-model="queryParams.model"
          placeholder="请选择型号"
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
            v-for="item in options1"
            :key="item.stationNum"
            :label="item.stationName" 
            :value="item.stationNum">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="具体地点" prop="location">
        <el-input
          v-model="queryParams.location"
          placeholder="请输入具体地点"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="安装日期" prop="installDate">
        <el-date-picker clearable
          v-model="queryParams.installDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择安装日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="最后一次维修时间" prop="lastMaintenanceDate" label-width="140px">
        <el-date-picker clearable
          v-model="queryParams.lastMaintenanceDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择最后一次维修时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="计划下一次维修时间" prop="nextMaintenanceDate" label-width="140px">
        <el-date-picker clearable
          v-model="queryParams.nextMaintenanceDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择计划下一次维修时间">
        </el-date-picker>
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
          v-hasPermi="['device:device:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['device:device:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['device:device:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['device:device:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="deviceList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="设备ID" align="center" prop="deviceId" />
      <el-table-column label="设备名称" align="center" prop="deviceName" />
      <el-table-column label="设备分类" align="center" prop="stationDeviceType.stationDeviceName" />
      <el-table-column label="品牌" align="center" prop="brand" />
      <el-table-column label="型号" align="center" prop="model" />
      <el-table-column label="车站" align="center" prop="station.stationName" />
      <el-table-column label="具体地点" align="center" prop="location" />
      <el-table-column label="状态" align="center" prop="status" />
      <el-table-column label="安装日期" align="center" prop="installDate" width="140">
        <template #default="scope">
          <span>{{ parseTime(scope.row.installDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="最后一次维修时间" align="center" prop="lastMaintenanceDate" width="140">
        <template #default="scope">
          <span>{{ parseTime(scope.row.lastMaintenanceDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="计划下一次维修时间" align="center" prop="nextMaintenanceDate" width="160">
        <template #default="scope">
          <span>{{ parseTime(scope.row.nextMaintenanceDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['device:device:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['device:device:remove']">删除</el-button>
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

    <!-- 添加或修改车站设备对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="deviceRef" :model="form" :rules="rules" label-width="80px">
        <!-- <el-form-item label="设备ID" prop="deviceId">
          <el-input v-model="form.deviceId" placeholder="请输入设备名称" />
        </el-form-item> -->
        <el-form-item label="设备名称" prop="deviceName">
          <el-input v-model="form.deviceName" placeholder="请输入设备名称" />
        </el-form-item>
        <el-form-item label="设备分类" prop="deviceType">
          <el-select v-model="form.deviceType" placeholder="请选择设备分类" filterable clearable>
            <el-option
              clearable
              @keyup.enter.native="handleQuery"
              v-for="item in options"
              :key="item.stationDeviceId"
              :label="item.stationDeviceName" 
              :value="item.stationDeviceId">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="品牌" prop="brand">
          <el-input v-model="form.brand" placeholder="请输入品牌" />
        </el-form-item>
        <el-form-item label="型号" prop="model">
          <el-input v-model="form.model" placeholder="请输入型号" />
        </el-form-item>
        <el-form-item label="车站" prop="stationNum">
          <el-select v-model="form.stationNum" placeholder="请选择车站" filterable clearable>
            <el-option
              clearable
              @keyup.enter.native="handleQuery"
              v-for="item in options1"
              :key="item.stationNum"
              :label="item.stationName" 
              :value="item.stationNum">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="具体地点" prop="location">
          <el-input v-model="form.location" placeholder="请输入具体地点" />
        </el-form-item>
        <el-form-item label="状态" prop="status">
          <el-input v-model="form.status" placeholder="请输入设备状态" />
        </el-form-item>
        <el-form-item label="安装日期" prop="installDate">
          <el-date-picker clearable
            v-model="form.installDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择安装日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="最后一次维修时间" prop="lastMaintenanceDate" label-width="140px">
          <el-date-picker clearable
            v-model="form.lastMaintenanceDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择最后一次维修时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="计划下一次维修时间" prop="nextMaintenanceDate" label-width="140px">
          <el-date-picker clearable
            v-model="form.nextMaintenanceDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择计划下一次维修时间">
          </el-date-picker>
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

<script setup name="Device">
import { listDevice, getDevice, delDevice, addDevice, updateDevice } from "@/api/device/device"
import { listType } from "@/api/DeviceType/type"
import { listStation } from "@/api/stationman/station"
import { onMounted } from "vue"


const { proxy } = getCurrentInstance()

const deviceList = ref([])
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
    deviceName: null,
    deviceType: null,
    brand: null,
    model: null,
    stationNum: null,
    location: null,
    status: null,
    installDate: null,
    lastMaintenanceDate: null,
    nextMaintenanceDate: null,
  },
  rules: {
  }
})

const { queryParams, form, rules } = toRefs(data)

onMounted(() => {
  getList()
  getAllList()
  getAllListStation()
})

const options = ref([])
function getAllList(){
  listType().then(response => {
    options.value = response.rows
  })
}

const options1 = ref([])
function getAllListStation(){
  listStation().then(response => {
    options1.value = response.rows
  })
}

/** 查询车站设备列表 */
function getList() {
  loading.value = true
  listDevice(queryParams.value).then(response => {
    deviceList.value = response.rows
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
    deviceId: null,
    deviceName: null,
    deviceType: null,
    brand: null,
    model: null,
    stationNum: null,
    location: null,
    status: null,
    installDate: null,
    lastMaintenanceDate: null,
    nextMaintenanceDate: null,
    createTime: null,
    updateTime: null
  }
  proxy.resetForm("deviceRef")
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
  ids.value = selection.map(item => item.deviceId)
  single.value = selection.length != 1
  multiple.value = !selection.length
}

/** 新增按钮操作 */
function handleAdd() {
  reset()
  open.value = true
  title.value = "添加车站设备"
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset()
  const _deviceId = row.deviceId || ids.value
  getDevice(_deviceId).then(response => {
    form.value = response.data
    open.value = true
    title.value = "修改车站设备"
  })
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["deviceRef"].validate(valid => {
    if (valid) {
      if (form.value.deviceId != null) {
        updateDevice(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功")
          open.value = false
          getList()
        })
      } else {
        addDevice(form.value).then(response => {
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
  const _deviceIds = row.deviceId || ids.value
  proxy.$modal.confirm('是否确认删除车站设备编号为"' + _deviceIds + '"的数据项？').then(function() {
    return delDevice(_deviceIds)
  }).then(() => {
    getList()
    proxy.$modal.msgSuccess("删除成功")
  }).catch(() => {})
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('device/device/export', {
    ...queryParams.value
  }, `device_${new Date().getTime()}.xlsx`)
}

getList()
</script>
