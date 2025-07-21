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
        ['1', '空闲', 'G678'],
        ['2', 'G1342', 'G2314'],
        ['3', '空闲', 'G4573'],
        ['4', 'G4689', 'G2355'],
        ['5', 'G75', 'G791'],
        ['6', 'C7488', 'C7563'],
        ['7', '空闲', 'G2376'],
        ['8', 'G6357', 'G6377'],
        ['9', 'G6322', 'G6378'],
        ['10', 'G6080', 'G6128'],
        ['11', 'G732', '空闲'],
        ['12', 'G7765', 'G7453'],
        ['13', 'C7865', 'Z297'],
    ],
    align: ['center','center','center']
})
</script>