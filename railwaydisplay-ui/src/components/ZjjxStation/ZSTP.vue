<template>
    <div ref="chartContainer" style="width: 300px; height: 200px;margin: 0 6.5px;"></div>
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
      text: '已售车票',
      style:{
          fill: '#fff',
      }
    },
    series: [
      {
        type: 'pie',
        data: [
          { name: 'CR400AF', value: 93 },
          { name: 'CRH380A', value: 32 },
          { name: 'CR400BF', value: 65 },
          { name: 'CRH1A', value: 44 },
          { name: 'CRH380D', value: 52 },
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