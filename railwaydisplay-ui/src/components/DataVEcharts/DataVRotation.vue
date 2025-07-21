<template>
  <div demo-bg>
    <div class="title">
        今日列车运行情况
    </div>
    <dv-scroll-board :config="config" style="width: 450px;height:250px" @mouseover="mouseoverHandler" @click="clickHandler" />
  </div>
</template>
<script lang="ts" setup>
import { reactive } from 'vue';

const name="DataVRotationView";

const config = reactive({
//   header: ['列1', '列2', '列3'],
  data: [
    ['G2355', 'CRH380A', '晚点'],
    ['G7453', 'CRH380B', '运行正常'],
    ['C7766', 'CRH3C', '早点'],
    ['G6080', 'CR400AF-Z', '晚点'],
    ['G6357', 'CR400AF-S', '早点'],
    ['G7655', 'CRH380D', '晚点'],
    ['G4375', 'CR400AF', '运行正常'],
    ['G897', 'CR400AF-Z', '运行正常'],
    ['G687', 'CR400BF-A', '运行正常'],
    ['G1374', 'CR400BF', '早点'],
  ],
  align: ['center','center','center'],
})

const mouseoverHandler = (e: any) => {
  console.log(e)
}

const clickHandler = (e: any) => {
  console.log(e)
}
</script>

<style>
.title{
    margin: 5px;
    /* text-align: center; */
    color: #fff;

    display: flex;
    align-items: center;
    justify-content: center;
}
</style>