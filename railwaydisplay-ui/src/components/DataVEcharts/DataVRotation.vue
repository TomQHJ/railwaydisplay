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
    ['行1列1', '行1列2', '行1列3'],
    ['行2列1', '行2列2', '行2列3'],
    ['行3列1', '行3列2', '行3列3'],
    ['行4列1', '行4列2', '行4列3'],
    ['行5列1', '行5列2', '行5列3'],
    ['行6列1', '行6列2', '行6列3'],
    ['行7列1', '行7列2', '行7列3'],
    ['行8列1', '行8列2', '行8列3'],
    ['行9列1', '行9列2', '行9列3'],
    ['行10列1', '行10列2', '行10列3'],
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