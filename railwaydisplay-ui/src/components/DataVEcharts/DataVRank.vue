<template>
  <div w50rem h24rem p3 flex="~ col" justify-center items-center bg-dark>
    <div>
        <div class="title">
            <p style="text-align:center ;">今日客流排名</p>
        </div>
        <dv-scroll-ranking-board :config="config" style="width:450px;height:300px;" />
    </div>
  </div>
</template>
<script setup>
import { reactive, onMounted } from 'vue'
import { listAllStationmsg } from '@/api/stationman/stationmsg'

const config = reactive({
  data: [],
  unit: ' 人',
})

async function fetchData() {
  const res = await listAllStationmsg()
  const flows = res.data || []
  config.data = flows.map(item => ({
    name: item.station?.stationName || '', // 站名
    value: (item.sendPeop || 0) + (item.arrivePeop || 0) // 到发总人数
  }))
}

onMounted(() => {
  fetchData()
})
</script>

<style>
.title{
    margin: 10px 0;
    text-align: center;
    color: #fff;

    display: flex;
    align-items: center;
    justify-content: center;
}
</style>