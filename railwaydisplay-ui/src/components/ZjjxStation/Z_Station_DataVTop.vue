<template>
    <!-- 今日客流（进站，出战），已售车票，今日运行列车总数（今日到发列车总数） 
     车站设备情况（百分比图）“放入top”// -->
    <div class="top_msm">
        <!-- 今日客流（进站，出战） -->
        <div class="peop">
            <ZSKP/>
        </div>

        <dv-decoration4 :dur="2" style="width:5px;height:160px;margin:20px 5px 10px 0 ;"/>
        
        <!-- 已售车票（直通车，区间票） -->
        <div class="ticket">
            <ZSTP/>
        </div>

        <dv-decoration4 :dur="2" style="width:5px;height:160px;margin:20px 5px 10px 0 ;"/>
        <!-- 今日运行列车总数（今日到发列车总数） -->
        <div class="station_sum">
            <ZSCP/>
        </div>

        <dv-decoration4 :dur="2" style="width:5px;height:160px;margin:20px 5px 10px 0 ;"/>
        <!-- 车站设备情况（百分比图） -->
        <div class="plat">
            <ZSSP/>
        </div>
    </div>

</template>

<script setup>
import ZSKP from './ZSKP.vue';//今日客流
import ZSTP from './ZSTP.vue';//已售车票
import ZSCP from './ZSCP.vue';//今日运行列车
import ZSSP from './ZSSP.vue';//车站设备
</script>

<style>
.top_msm{
    display: flex;
    flex-direction: row;
    width: 1000px;
}
</style>