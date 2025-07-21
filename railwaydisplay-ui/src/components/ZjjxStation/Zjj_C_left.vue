<template>
    <!-- 热门区间（轮播排序），各车次上下人数（表格） 站台状态（表格）-->
    <div class="top">
        <Zjj_C_left_top/>
    </div>
    <dv-decoration2 :dur="2" style="width:250px;height:5px;" />
    <div class="zhong">
        <Zjj_C_left_z/>
    </div>
    <dv-decoration2 :dur="2" style="width:250px;height:5px;" />
    <div class="down">
        <Zjj_C_left_down/>
    </div>
</template>

<script setup>
import Zjj_C_left_top from './Zjj_C_left_top.vue';//热门区间
import Zjj_C_left_z from './Zjj_C_left_z.vue';//各车次上下人数
import Zjj_C_left_down from './Zjj_C_left_down.vue';//站台状态
</script>