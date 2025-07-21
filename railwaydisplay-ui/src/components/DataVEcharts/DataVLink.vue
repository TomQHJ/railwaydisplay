<template>
  <div ref="chartContainer" style="width: 100%; height: 350px;margin: 0 6.5px;"></div>
</template>

<script setup>
import { onMounted, ref } from 'vue';
import Charts from '@jiaminghi/charts';
const chartContainer = ref(null);


onMounted(() => {
  const container = chartContainer.value;
  const myChart = new Charts(container);

  const option1 = {
  title: {
    text: '本周集团客流',
    /* 改变字体颜色 fill ，改变字体大小 fontSize*/
    style:{
      fill: '#fff',
    }
  },
  xAxis: {
    name: '本周',
    data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
    /* 改变字体颜色 fill ，改变字体大小 fontSize*/
    nameTextStyle:{
      fill: '#fff',
    },
    /* 刻度样式更改 */
    /* axisLabel.style */
    axisLabel:{
      style:{
        fill: '#fff'
      }
    }
  },
  yAxis: {
    name: '人数（万人）',
    data: 'value',
    /* (标题)改变字体颜色 fill ，改变字体大小 fontSize*/
    nameTextStyle:{
      fill: '#fff'
    },
    /* 刻度样式更改 */
    /* axisLabel.style */
    axisLabel:{
      style:{
        fill: '#fff'
      }
    }
  },
  series: [
    {
      data: [1200, 2230, 1900, 2100, 3500, 4200, 3985],
      type: 'line',
      lineArea: {
        show: true,
        gradient: ['rgba(55, 162, 218, 0.6)', 'rgba(55, 162, 218, 0)']
      }
    }
  ]
}
  myChart.setOption(option1);
});
</script>
