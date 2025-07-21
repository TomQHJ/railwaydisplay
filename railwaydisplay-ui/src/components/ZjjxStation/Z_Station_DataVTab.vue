<template>
    <div demo-bg>
      <div class="ZSDT_title">
            <div class="title-left">
                <div w50rem h18rem flex justify-center items-center bg-dark>
                    <dv-decoration1 style="width:200px;height:50px;" />
                </div>
            </div>
            <h1 class="center-title">今日大屏</h1>
            <div class="title-right">
                <div w50rem h18rem flex justify-center items-center bg-dark>
                    <dv-decoration1 style="width:200px;height:50px;" />
                </div>
            </div> 
      </div>
      
      <!-- 关闭浮动数据方法@mouseover="mouseoverHandler" -->
      <dv-scroll-board :config="config" style="width: 100%;height:495px" @click="clickHandler" />

      <!-- 弹窗 -->
      <el-dialog v-model="dialogVisible" :title="dialogTitle" width="600px">
        <el-table :data="tableData" border style="width: 100%">
          <el-table-column prop="type" label="类型" />
          <el-table-column prop="station" label="站点" />
          <el-table-column prop="time" label="发车/到达时间" />
        </el-table>
      </el-dialog>
    </div>
</template>
<script lang="ts" setup>
import { onMounted, reactive, ref } from 'vue';
import { listAll, listRailwaytoday } from '../../api/railwaytoday/railwaytoday'
import { getRailwaymapByTrainNum } from '@/api/railway/railwaymap'


const dialogVisible = ref(false)
const tableData = ref<any[]>([])
const dialogTitle = ref('图表展示')
  
  // const name="DataVRotationView";
  
  const config = reactive({
    header: ['车次', '始发站', '终到站','停检时间','开点','站台','检票口','状态'],
    data: [],
    headerHeight:70,
    align: ['center','center','center','center','center','center','center','center'],
  })

  
  onMounted(()=>{
    fetchData()
    getAllList()
  })

  function getAllList(){
  listAll().then(response => {
    options.value = response.data
  })
}
  
  function fetchData() {
  listRailwaytoday().then(res => {
    config.data = (res.rows || []).map(item => [
      item.trainNum || '',
      item.depStation || '',
      item.terStation || '',
      item.stopTickTime || '',
      item.startTime || '',
      item.plat || '',
      item.ticketNum || '',
      item.stateTicket.railwayState
    ])
  })
}
const clickHandler = (e: any) => {
  const trainNum = e.row[0]
  const depStation = e.row[1]
  const terStation = e.row[2]
  dialogTitle.value = `${trainNum}（${depStation} → ${terStation}）运行图`
  dialogVisible.value = true
  tableData.value = [] // 先清空，显示加载中

   getRailwaymapByTrainNum(trainNum).then(res => {
    // 后端返回的是 { code: 200, data: { ... } }
    if (res.data) {
      // 转换为每行一个站点
      const arr = [
        { station: res.data.depStation, time: res.data.depTime, type: '始发站' },
        { station: res.data.wayStation01, time: res.data.wayDepTime01, type: '经停站' },
        { station: res.data.wayStation02, time: res.data.wayDepTime02, type: '经停站' },
        { station: res.data.wayStation03, time: res.data.wayDepTime03, type: '经停站' },
        { station: res.data.terStation, time: res.data.terTime, type: '终到站' }
      ].filter(item => item.station); // 过滤空站点
      tableData.value = arr;
    }
  })
}
</script>
  
<style>
  .ZSDT_title{
      display: flex;
      align-items: center;
      justify-content: space-between;

      margin: 5px;
      color: #fff;
      display: flex;
      flex-direction: row;
  }
  .center-title {
      flex: 1;
      text-align: center;
      /* 保证标题居中 */
  }
</style>