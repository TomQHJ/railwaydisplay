<template>
    <div ref="chartContainer" style="width: 300px; height: 200px;margin-right: 30px;"></div>
</template>

<script setup>
import { onMounted } from 'vue';
import Charts from '@jiaminghi/charts';
const chartContainer = ref(null);

onMounted(() => {
  const container = chartContainer.value;
  const myChart = new Charts(container);

  const option1 = {
    title: {
      text: '车站设备',
      style:{
          fill: '#fff',
      }
    },
    series: [
      {
        type: 'pie',
        data: [
          { name: '空调', value: 93 },
          { name: '显示屏', value: 32 },
          { name: '电梯', value: 65 },
          { name: '照明设备', value: 44 },
          { name: '闸机', value: 52 },
        ],
        insideLabel: {
          show: true
        },
        roseType: true
      }
    ]
}

  myChart.setOption(option1);


});
</script>

<style>

</style>