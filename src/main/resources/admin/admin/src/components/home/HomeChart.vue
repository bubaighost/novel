<template>
  <div id="home-chart" style="width:100%;height:500px;"></div>
</template>
<script>
export default {
  mounted() {
    this.getDataLists();
  },
  methods: {
    getDataLists(){
      this.$http({
        url: `xiaoshuofenlei/statistics`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.homeChart(data.data);
        } else {
          this.$message.error(data.msg);
        }
      });
    },
    homeChart(data) {
      // 基于准备好的dom，初始化echarts实例
      var myChart = this.$echarts.init(document.getElementById("home-chart"));
      // 指定图表的配置项和数据
      var option = {
        title: {
          text: '小说分类数量统计', // 标题文本
          left: 'center',   // 标题位置
          top: 20           // 标题距离顶部的距离
        },
        tooltip: {
          trigger: 'axis',
          axisPointer: {
            type: 'shadow'
          }
        },
        xAxis: {
          type: 'category',
          data: data.type,

        },
        yAxis: {
          type: 'value',
          boundaryGap: [0, 0.01],
          minInterval:1
        },
        series: [
          {
            type: 'bar',
            name: '数量',
            data:  data.value
          }
        ]
      };
      // // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
      //根据窗口的大小变动图表
      window.onresize = function() {
        myChart.resize();
      };
    }
  }



};
</script>
<style lang="scss" scoped>
#home-chart {
  background: #ffffff;
  padding: 20px 0;
}
</style>
