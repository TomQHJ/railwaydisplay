<template>
    <!-- 各车次上下人数 -->
     <h4 style="color: aliceblue;text-align: center;margin: 5px 0;">各车次上下（总）人数</h4>
    <dv-scroll-ranking-board :config="config" style="width:240px;height:200px;margin: 0 5px;" />
</template>

<script setup>
import { reactive, onMounted } from 'vue'
import { listAll } from '@/api/peo/peo'

const config = reactive({
  data: [],
  unit: '人',
})

onMounted(async () => {
  const railway = await listAll()
  const railwaypeo = railway.data || []

  config.data = railwaypeo.map(data => ({
    name: data.trainNum,
    value: Number(data.dTp || 0) + Number(data.tTp || 0)
  }))
})
</script>