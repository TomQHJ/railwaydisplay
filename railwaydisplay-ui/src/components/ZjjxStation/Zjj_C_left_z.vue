<template>
    <!-- 各车次上下人数 -->
     <h4 style="color: aliceblue;text-align: center;margin: 5px 0;">各车次上下（总）人数</h4>
    <dv-scroll-ranking-board :config="config" style="width:240px;height:200px;margin: 0 5px;" />
</template>

<script setup>
import { reactive } from 'vue';
const config=reactive({
    data: [
    {
      name: 'G1',
      value: 1567,
    },
    {
      name: 'G2',
      value: 1352,
    },
    {
      name: 'G3',
      value: 867,
    },
    {
      name: 'G4',
      value: 666,
    },
    {
      name: 'G5',
      value: 780,
    },
    {
      name: 'G6',
      value: 845,
    },
    {
      name: 'G7',
      value: 829,
    },
  ],
  unit: '人',
})
</script>