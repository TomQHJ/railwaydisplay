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
                  [113.158697, 28.224232]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [113.522078, 27.11883]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [113.259661, 29.064701]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [112.579689, 26.792402]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [112.608495, 27.72863]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [113.142071, 25.813202]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [111.734581, 25.774386]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [111.617993, 27.73631]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [110.880659, 26.912035]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [110.082325, 27.552517]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [109.731854, 28.694703]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [111.958046, 28.573867]
                ]
              },
              {
                coords: [
                  [110.479191, 29.117096],
                  [111.524565, 29.299744]
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