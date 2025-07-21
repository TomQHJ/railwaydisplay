<template>
    <!-- 全屏容器 -->
    <dv-full-screen-container>
        <div class="dv-full-screen-container">
            <!-- 头部标题区域 + 后台跳转按钮 -->
            <div id="top">
                <!-- 标题 -->
                <div id="top-title">
                    <h3>车站数据大屏</h3>
                    <dv-decoration5 :dur="2" style="width:300px;height:40px;" />
                </div>

                <!-- 后台管理按钮 -->
                <div id="top-btn">
                     <dv-button :bg="false" @click="goToIndex">后台管理</dv-button>
                </div>
            </div>


            <div id="middle">
                <!-- 左部数据可视化区域 -->
                <div id="left-item">
                    <dv-border-box3>
                        <div id="left-top">
                            <DataVRotation />
                        </div>
                        <dv-decoration4 :reverse="true" style="width:450px;height:5px;margin: 0 24px;"/>
                        <div id="left-down">
                            <DataVRank />
                        </div>
                    </dv-border-box3>
                </div>

                <!-- 中部数据地图 -->
                <div id="map-container">
                    <EchartMap />
                </div>

                <!-- 右部数据可视化区域 -->
                <div id="right-item">
                    <dv-border-box9>
                        <div class="right-top">
                            <DataVLink />
                        </div>
                        <dv-decoration-10 style="width:90%;height:5px;margin-left: 27px;" />
                        <div class="right-down">
                            <DataVPie />
                        </div>
                    </dv-border-box9>
                </div>
            </div>
        </div>
    </dv-full-screen-container>
</template>

<script setup>
import EchartMap from '../components/Echart/EchartMap.vue'
import DataVRotation from '@/components/DataVEcharts/DataVRotation.vue'
import DataVRank from '@/components/DataVEcharts/DataVRank.vue'
import DataVLink from '@/components/DataVEcharts/DataVLink.vue'
import DataVPie from '@/components/DataVEcharts/DataVPie.vue'

import { useRouter } from 'vue-router'
const router = useRouter()

function goToIndex() {
  router.push('/index')
}

// export default {
//     name: 'DemoView',
//     components: {
//     EchartMap,
//     DataVRotation,
//     DataVRank,
//     DataVLink,
//     DataVPie,
// },    
// }
</script>

<style>
* {
    margin: 0;
    padding: 0;
}


.dv-full-screen-container {
    background: url('../assets/backgroud/bg.png') no-repeat center center fixed;
    background-size: cover;
    width: 100%;
    height: 100%;
    position: relative;
}

#map-container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 800px;
    height: 600px;
    z-index: 1;
}

#top{
    display: flex;
    position: relative;
    width: 100%;
    height: 10%;
    padding: 0 20px;
    justify-content: center;
    align-items: center;
}

#top-title{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin: 0 auto;
}
#top-title h3{
    font-size: 24px;
    font-weight: bold;
    text-align: center;
    margin-top: 50px;
    color: aliceblue;
}

#top-btn {
    position: absolute;
    right: 20px;
}

#middle{
    width: 100%;
    height: 85%;
    display: flex;
}

#left-item{
  width: 500px;
  height: 700px;
  display: flex;
  /* background-color: aliceblue; */
}

#left-top{
    margin: 30px 24px 20px 24px;
}

#left-down{
    margin: 0 24px 20px 24px;
}

#right-item{
    position: absolute;
    right: 0;
    top: 87px;
    width: 500px;
    height: 700px;
    display: flex;
    /* background-color: aliceblue; */
}

</style>