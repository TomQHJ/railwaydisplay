<template>
  <div ref="mapChart" class="map-chart"></div>
</template>

<script>
import * as echarts from 'echarts';
import mapData from 'F:/新建文件夹/20250630144353/RailwayDisplay/railwaydisplay-ui/src/api/430000.json';

export default {
  name: 'EchartMap',
  data() {
    return {
      chartInstance: null
    };
  },
  mounted() {
    this.initMap();
  },
  beforeDestroy() {
    if (this.chartInstance) {
      this.chartInstance.dispose();
    }
  },
  methods: {
    initMap() {
      echarts.registerMap('hunan', mapData);
      this.chartInstance = echarts.init(this.$refs.mapChart);
      
      this.chartInstance.on('click', (params) => {
        if (params.name === '张家界市') {
          this.$router.push('/zjjxstation');
        }
      });
      
      const option = {
        backgroundColor: 'transparent',
        tooltip: {
          trigger: 'item',
          formatter: '{b}'
        },
        geo: {
          map: 'hunan',
          roam: false,
          center: [111.5, 27.5],
          zoom: 1.2,
          label: {
            show: true,
            color: '#fff'
          },
          itemStyle: {
            areaColor: 'rgba(255, 255, 255, 0)',
            borderColor: '#404a59'
          },
          emphasis: {
            itemStyle: {
              areaColor: '#58adf1',
              borderWidth: 1
            },
            label: {
              show: true
            }
          }
        },
        series: [
          {
            name: '飞线',
            type: 'lines',
            coordinateSystem: 'geo',
            zlevel: 2,
            effect: {
              show: true,
              period: 8,
              trailLength: 0.1,
              symbol: 'arrow',
              symbolSize: 5,
              color: '#FFA500'
            },
            lineStyle: {
              color: '#FFA500',
              width: 1,
              opacity: 0.4,
              curveness: 0.2
            },
            data: [
              {
                coords: [
                  [110.479191, 29.117096],
                  [112.982279, 28.19409]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [113.132855, 29.37029]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [111.461525, 27.236811]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [112.583819, 26.898164]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [111.614648, 26.435972]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [113.037704, 25.782264]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [109.717196, 28.260189]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [112.008497, 27.728136]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [111.996396, 27.741073]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [111.608019, 26.434516]
                ]
              }
            ]
          }
        ]
      };
      
      this.chartInstance.setOption(option);
      
      window.addEventListener('resize', () => {
        this.chartInstance.resize();
      });
    }
  }
};
</script>

<style>
.map-chart {
  width: 100%;
  height: 100%;
}
</style>