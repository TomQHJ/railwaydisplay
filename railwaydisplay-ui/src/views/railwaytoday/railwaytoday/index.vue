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
      <el-form-item label="停检时间" prop="stopTickTime">
        <el-time-picker clearable
          v-model="queryParams.stopTickTime"
          format="HH:mm"
           value-format="HH:mm"
           editable:true
           :show-seconds="false"
          placeholder="请选择停检时间">
        </el-time-picker>
      </el-form-item>
      <el-form-item label="发车时间" prop="startTime">
        <el-time-picker clearable
          v-model="queryParams.startTime"
          format="HH:mm"
           value-format="HH:mm"
           editable:true
           :show-seconds="false"
          placeholder="请选择发车时间">
        </el-time-picker>
      </el-form-item>
      <el-form-item label="站台" prop="plat">
        <el-input
          v-model="queryParams.plat"
          placeholder="请输入站台"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="检票口" prop="ticketNum">
        <el-input
          v-model="queryParams.ticketNum"
          placeholder="请输入检票口"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="列车状态" prop="state">
        <!-- <el-input
          v-model="queryParams.state"
          placeholder="请输入列车状态"
          clearable
          @keyup.enter="handleQuery"
        /> -->
        <el-select v-model="queryParams.state" placeholder="请选择列车状态" filterable clearable>
          <el-option
            clearable
            @keyup.enter.native="handleQuery"
            v-for="item in options"
            :key="item.railwayStateNum"
            :label="item.railwayState" 
            :value="item.railwayStateNum">
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
          v-hasPermi="['railwaytoday:railwaytoday:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['railwaytoday:railwaytoday:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['railwaytoday:railwaytoday:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['railwaytoday:railwaytoday:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="railwaytodayList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" align="center" prop="id" />
      <el-table-column label="车次" align="center" prop="trainNum" />
      <el-table-column label="始发站" align="center" prop="depStation" />
      <el-table-column label="终到站" align="center" prop="terStation" />
      <el-table-column label="停检时间" align="center" prop="stopTickTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.stopTickTime, '{h}:{i}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="发车时间" align="center" prop="startTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.startTime, '{h}:{i}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="站台" align="center" prop="plat" />
      <el-table-column label="检票口" align="center" prop="ticketNum" />
      <el-table-column label="列车状态" align="center" prop="stateTicket.railwayState" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['railwaytoday:railwaytoday:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['railwaytoday:railwaytoday:remove']">删除</el-button>
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

    <!-- 添加或修改今日车次大屏对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="railwaytodayRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="车次" prop="trainNum">
          <el-input v-model="form.trainNum" placeholder="请输入车次" />
        </el-form-item>
        <el-form-item label="始发站" prop="depStation">
          <el-input v-model="form.depStation" placeholder="请输入始发站" />
        </el-form-item>
        <el-form-item label="终到站" prop="terStation">
          <el-input v-model="form.terStation" placeholder="请输入终到站" />
        </el-form-item>
        <el-form-item label="停检时间" prop="stopTickTime">
          <el-time-picker clearable
           v-model="form.stopTickTime"
           type="date"
           value-format="HH:mm"
           editable:true
           placeholder="请选择停检时间">
          </el-time-picker>
        </el-form-item>
        <el-form-item label="发车时间" prop="startTime">
          <el-time-picker clearable
           v-model="form.startTime"
           type="date"
           value-format="HH:mm"
           editable:true
           placeholder="请选择发车时间">
          </el-time-picker>
        </el-form-item>
        <el-form-item label="站台" prop="plat">
          <el-input v-model="form.plat" placeholder="请输入站台" />
        </el-form-item>
        <el-form-item label="检票口" prop="ticketNum">
          <el-input v-model="form.ticketNum" placeholder="请输入检票口" />
        </el-form-item>
        <el-form-item label="列车状态" prop="state">
          <!-- <el-input v-model="form.state" placeholder="请输入列车状态" /> -->
          <el-select v-model="form.state" placeholder="请选择列车状态" filterable clearable>
            <el-option
                clearable
                v-for="item in options"
                :key="item.railwayStateNum"
                :label="item.railwayState" 
                :value="item.railwayStateNum">
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

<script setup name="Railwaytoday">
import { listRailwaytoday, getRailwaytoday, delRailwaytoday, addRailwaytoday, updateRailwaytoday } from "@/api/railwaytoday/railwaytoday"
import { listAll } from "@/api/railwayticket/railwayticket"
import { onMounted } from "vue"

const options = ref([])

const { proxy } = getCurrentInstance()

const railwaytodayList = ref([])
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
    stopTickTime: null,
    startTime: null,
    plat: null,
    ticketNum: null,
    state: null
  },
  rules: {
  }
})

const { queryParams, form, rules } = toRefs(data)

function getAllList(){
  listAll().then(response => {
    options.value = response.data
  })
}

onMounted(() => {
  getAllList()
  getList()
})

/** 查询今日车次大屏列表 */
function getList() {
  loading.value = true
  listRailwaytoday(queryParams.value).then(response => {
    railwaytodayList.value = response.rows
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
    terStation: null,
    stopTickTime: null,
    startTime: null,
    plat: null,
    ticketNum: null,
    state: null
  }
  proxy.resetForm("railwaytodayRef")
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
  title.value = "添加今日车次大屏"
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset()
  const _id = row.id || ids.value
  getRailwaytoday(_id).then(response => {
    form.value = response.data
    open.value = true
    title.value = "修改今日车次大屏"
  })
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["railwaytodayRef"].validate(valid => {
    if (valid) {
      if (form.value.id != null) {
        updateRailwaytoday(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功")
          open.value = false
          getList()
        })
      } else {
        addRailwaytoday(form.value).then(response => {
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
  proxy.$modal.confirm('是否确认删除今日车次大屏编号为"' + _ids + '"的数据项？').then(function() {
    return delRailwaytoday(_ids)
  }).then(() => {
    getList()
    proxy.$modal.msgSuccess("删除成功")
  }).catch(() => {})
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('railwaytoday/railwaytoday/export', {
    ...queryParams.value
  }, `railwaytoday_${new Date().getTime()}.xlsx`)
}

getList()
</script>
