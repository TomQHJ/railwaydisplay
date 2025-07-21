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
      <el-form-item label="发车时间" prop="depTime">
        <el-time-picker clearable
           v-model="queryParams.depTime"
           type="date"
           value-format="HH:mm"
           editable:true
           placeholder="请选择发车时间">
          </el-time-picker>
        <!-- <el-date-picker clearable
          v-model="queryParams.depTime"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择发车时间">
        </el-date-picker> -->
      </el-form-item>
      <el-form-item label="途径站1" prop="wayStation01">
        <el-input
          v-model="queryParams.wayStation01"
          placeholder="请输入途径站1"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="途径发车时间" prop="wayDepTime01" label-width="120px">
        <el-time-picker clearable
           v-model="queryParams.wayDepTime01"
           type="date"
           value-format="HH:mm"
           editable:true
           placeholder="请选择途径站发车时间">
        </el-time-picker>
        <!-- <el-date-picker clearable
          v-model="queryParams.wayDepTime01"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择途径发车时间">
        </el-date-picker> -->
      </el-form-item>
      <el-form-item label="途径站2" prop="wayStation02">
        <el-input
          v-model="queryParams.wayStation02"
          placeholder="请输入途径站2"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="途径发车时间" prop="wayDepTime02" label-width="120px">
        <el-time-picker clearable
           v-model="queryParams.wayDepTime02"
           type="date"
           value-format="HH:mm"
           editable:true
           placeholder="请选择途径站发车时间">
        </el-time-picker>
        <!-- <el-date-picker clearable
          v-model="queryParams.wayDepTime02"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择途径发车时间">
        </el-date-picker> -->
      </el-form-item>
      <el-form-item label="途径站3" prop="wayStation03">
        <el-input
          v-model="queryParams.wayStation03"
          placeholder="请输入途径站3"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="途径发车时间" prop="wayDepTime03" label-width="120px">
        <el-time-picker clearable
           v-model="queryParams.wayDepTime03"
           type="date"
           value-format="HH:mm"
           editable:true
           placeholder="请选择途径站发车时间">
        </el-time-picker>
        <!-- <el-date-picker clearable
          v-model="queryParams.wayDepTime03"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择途径发车时间">
        </el-date-picker> -->
      </el-form-item>
      <el-form-item label="终点站" prop="terStation">
        <el-input
          v-model="queryParams.terStation"
          placeholder="请输入终点站"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="终到时间" prop="terTime">
        <el-time-picker clearable
           v-model="queryParams.terTime"
           type="date"
           value-format="HH:mm"
           editable:true
           placeholder="请选择终到时间">
        </el-time-picker>
        <!-- <el-date-picker clearable
          v-model="queryParams.terTime"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择终到时间">
        </el-date-picker> -->
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
          v-hasPermi="['railway:railwaymap:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['railway:railwaymap:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['railway:railwaymap:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['railway:railwaymap:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="railwaymapList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" align="center" prop="id" />
      <el-table-column label="车次" align="center" prop="trainNum" />
      <el-table-column label="始发站" align="center" prop="depStation" />
      <el-table-column label="发车时间" align="center" prop="depTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.depTime, '{h}:{i}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="途径站1" align="center" prop="wayStation01" />
      <el-table-column label="途径发车时间" align="center" prop="wayDepTime01" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.wayDepTime01, '{h}:{i}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="途径站2" align="center" prop="wayStation02" />
      <el-table-column label="途径发车时间" align="center" prop="wayDepTime02" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.wayDepTime02, '{h}:{i}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="途径站3" align="center" prop="wayStation03" />
      <el-table-column label="途径发车时间" align="center" prop="wayDepTime03" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.wayDepTime03, '{h}:{i}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="终点站" align="center" prop="terStation" />
      <el-table-column label="终到时间" align="center" prop="terTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.terTime, '{h}:{i}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['railway:railwaymap:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['railway:railwaymap:remove']">删除</el-button>
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

    <!-- 添加或修改列车运行图对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="railwaymapRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="车次" prop="trainNum">
          <el-input v-model="form.trainNum" placeholder="请输入车次" />
        </el-form-item>
        <el-form-item label="始发站" prop="depStation">
          <el-input v-model="form.depStation" placeholder="请输入始发站" />
        </el-form-item>
        <el-form-item label="发车时间" prop="depTime">
          <el-time-picker clearable
           v-model="form.depTime"
           type="date"
           value-format="HH:mm"
           editable:true
           placeholder="请选择发车时间">
          </el-time-picker>
          <!-- <el-date-picker clearable
            v-model="form.depTime"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择发车时间">
          </el-date-picker> -->
        </el-form-item>
        <el-form-item label="途径站1" prop="wayStation01">
          <el-input v-model="form.wayStation01" placeholder="请输入途径站1" />
        </el-form-item>
        <el-form-item label="途径发车时间" prop="wayDepTime01" label-width="120px">
          <el-time-picker clearable
            v-model="form.wayDepTime01"
            type="date"
            value-format="HH:mm"
            editable:true
            placeholder="请选择途径站发车时间">
          </el-time-picker>
          <!-- <el-date-picker clearable
            v-model="form.wayDepTime01"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择途径发车时间">
          </el-date-picker> -->
        </el-form-item>
        <el-form-item label="途径站2" prop="wayStation02">
          <el-input v-model="form.wayStation02" placeholder="请输入途径站2" />
        </el-form-item>
        <el-form-item label="途径发车时间" prop="wayDepTime02" label-width="120px">
          <el-time-picker clearable
            v-model="form.wayDepTime02"
            type="date"
            value-format="HH:mm"
            editable:true
            placeholder="请选择途径站发车时间">
          </el-time-picker>
          <!-- <el-date-picker clearable
            v-model="form.wayDepTime02"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择途径发车时间">
          </el-date-picker> -->
        </el-form-item>
        <el-form-item label="途径站3" prop="wayStation03">
          <el-input v-model="form.wayStation03" placeholder="请输入途径站3" />
        </el-form-item>
        <el-form-item label="途径发车时间" prop="wayDepTime03" label-width="120px">
          <el-time-picker clearable
            v-model="form.wayDepTime03"
            type="date"
            value-format="HH:mm"
            editable:true
            placeholder="请选择途径站发车时间">
          </el-time-picker>
          <!-- <el-date-picker clearable
            v-model="form.wayDepTime03"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择途径发车时间">
          </el-date-picker> -->
        </el-form-item>
        <el-form-item label="终点站" prop="terStation">
          <el-input v-model="form.terStation" placeholder="请输入终点站" />
        </el-form-item>
        <el-form-item label="终到时间" prop="terTime">
          <el-time-picker clearable
            v-model="form.terTime"
            type="date"
            value-format="HH:mm"
            editable:true
            placeholder="请选择途径站发车时间">
          </el-time-picker>
          <!-- <el-date-picker clearable
            v-model="form.terTime"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择终到时间">
          </el-date-picker> -->
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

<script setup name="Railwaymap">
import { listRailwaymap, getRailwaymap, delRailwaymap, addRailwaymap, updateRailwaymap } from "@/api/railway/railwaymap"

const { proxy } = getCurrentInstance()

const railwaymapList = ref([])
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
    depTime: null,
    wayStation01: null,
    wayDepTime01: null,
    wayStation02: null,
    wayDepTime02: null,
    wayStation03: null,
    wayDepTime03: null,
    terStation: null,
    terTime: null
  },
  rules: {
  }
})

const { queryParams, form, rules } = toRefs(data)

/** 查询列车运行图列表 */
function getList() {
  loading.value = true
  listRailwaymap(queryParams.value).then(response => {
    railwaymapList.value = response.rows
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
    depStation: null,
    depTime: null,
    wayStation01: null,
    wayDepTime01: null,
    wayStation02: null,
    wayDepTime02: null,
    wayStation03: null,
    wayDepTime03: null,
    terStation: null,
    terTime: null
  }
  proxy.resetForm("railwaymapRef")
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
  title.value = "添加列车运行图"
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset()
  const _id = row.id || ids.value
  getRailwaymap(_id).then(response => {
    form.value = response.data
    open.value = true
    title.value = "修改列车运行图"
  })
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["railwaymapRef"].validate(valid => {
    if (valid) {
      if (form.value.id != null) {
        updateRailwaymap(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功")
          open.value = false
          getList()
        })
      } else {
        addRailwaymap(form.value).then(response => {
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
  proxy.$modal.confirm('是否确认删除列车运行图编号为"' + _ids + '"的数据项？').then(function() {
    return delRailwaymap(_ids)
  }).then(() => {
    getList()
    proxy.$modal.msgSuccess("删除成功")
  }).catch(() => {})
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('railway/railwaymap/export', {
    ...queryParams.value
  }, `railwaymap_${new Date().getTime()}.xlsx`)
}

getList()
</script>
