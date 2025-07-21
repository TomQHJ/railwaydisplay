<template>
  <dv-full-screen-container>
    <div class="zjj-city">
      <div id="title">
        <div id="top-title">
          <h3>张家界西站</h3>
          <dv-decoration5 :dur="2" style="width:300px;height:40px;" />
        </div>

        <!-- 后台管理按钮 -->
        <div id="top-btn">
            <dv-button :bg="false" @click="goToIndex">后台管理</dv-button>
        </div>
      </div>
      <div class="city-content">
        <div class="content-columns">
          <!-- 热门区间（轮播排序），各车次上下人数（表格）  //站台状态（表格）/车站设备情况（百分比图）“放入top” //-->
          <div class="left">
            <dv-border-box3>
              <div class="dv-bg">
                  <Zjj_C_left/>
              </div>
            </dv-border-box3>
          </div>

          <div class="right-sum">
          
            <!-- 今日大屏 -->
              <div class="right">
                  <ZjjDataVTab />
              </div>
              <!-- 今日客流（进站，出战），已售车票，今日运行列车总数（今日到发列车总数） ，-->
              <dv-border-box5>
                <div class="top">
                    <ZjjDataVTop />
                </div>
              </dv-border-box5>
          </div>
        </div>
      </div>
    </div>
  </dv-full-screen-container>
</template>

<script setup>
import ZjjDataVTab from '../components/ZjjxStation/Z_Station_DataVTab.vue'//今日大屏
import ZjjDataVTop from '../components/ZjjxStation/Z_Station_DataVTop.vue'//今日客流（进站，出战），已售车票，今日运行列车总数（今日到发列车总数） 位于最下部
import Zjj_C_left from '../components/ZjjxStation/Zjj_C_left.vue';//热门区间（轮播排序），各车次上下人数（表格），站台状态（表格）

import { useRouter } from 'vue-router'
const router = useRouter()

function goToIndex() {
  router.push('/index')
}

</script>


<style scoped>
.zjj-city {
  /* padding: 20px; */
  background: url('@/assets/backgroud/bg.png') no-repeat center center fixed;
  width: 100%;
  height: 100%;
}

.city-content {
  display: flex;
  flex-direction: column;
  margin-top: 20px;
}

.content-columns {
  display: flex;
  flex-direction: row;
  width: 100%;
  height: 755px;
}

.left {
  /* background-color: lightblue; */
  width: 400px;
}

.dv-bg{
  padding: 25px;
  display: flex;
  flex-direction: column;
}

.right-sum{
  display: flex;
  flex-direction: column;
  width: 100%;
  /* height: 755px; */
}


.right {
  width: 99%;
  height: 555px;
  margin: 0 0 0 5px;
}

.top{
  width: 100%;
}

/* 顶部标题 */
#title{
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
</style>