<template>
    <!-- 热门区间 -->
     <h3 style="color: aliceblue;text-align: center;">热门区间</h3>
    <dv-capsule-chart :config="config" style="width:250px;height:200px" />
</template>

<script setup>
import { reactive } from 'vue';
const config = reactive({
  data: [
    {
      name: '长沙',
      value: 167
    },
    {
      name: '广州南',
      value: 123
    },
    {
      name: '深圳北',
      value: 98
    },
    {
      name: '重庆东',
      value: 75
    },
    {
      name: '汕头',
      value: 66
    },
  ],
  colors: ['#e062ae', '#fb7293', '#e690d1', '#32c5e9', '#96bfff'],
  unit: '万人',
  labelNum: 8,
})
</script>