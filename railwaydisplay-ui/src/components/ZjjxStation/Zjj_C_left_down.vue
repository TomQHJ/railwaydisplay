<template>
    <!-- 站台状态 -->
    <h3 style="color: aliceblue;text-align: center;margin: 5px 0;">站台状态</h3>
    <dv-scroll-board :config="config" style="width: 246px;height: 215px;margin: 0 2px;"/>
</template>
<script setup>
import { reactive } from 'vue';
const config=reactive({
    header: ['站台编号', '当前状态', '下一列车'],
    data: [
        ['行1列1', '行1列2', '行1列3'],
        ['行2列1', '行2列2', '行2列3'],
        ['行3列1', '行3列2', '行3列3'],
        ['行4列1', '行4列2', '行4列3'],
        ['行5列1', '行5列2', '行5列3'],
        ['行6列1', '行6列2', '行6列3'],
        ['行7列1', '行7列2', '行7列3'],
    ]
})
</script>