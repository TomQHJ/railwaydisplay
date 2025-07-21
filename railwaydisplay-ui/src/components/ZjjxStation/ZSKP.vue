<template>
    <div class="peop_title">
        <h3 style="text-align: center;">今日客流</h3>
    </div>
            
    <div class="peop_cav">
        <dv-active-ring-chart :config="config" style="width:300px;height:150px" />
    </div>
</template>

<script setup>
import { reactive } from 'vue';
const config=reactive({
    // radius:100,
    digitalFlopStyle: {
        fontSize: 15
    }
    ,
    data:[
    {
      name: '区间',
      value: 55
    },
    {
      name: '直通',
      value: 120
    }
    ]
})
</script>

<style>
.peop{
    display: flex;
    flex-direction: column;
}

.peop_title{
    margin-top: 25px;
    flex: 1;
    color: aliceblue;
}
</style>