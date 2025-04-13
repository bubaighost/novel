<template>
  <div class="content">
      <home-chart/>
  </div>
</template>
<script>
import router from '@/router/router-static'
import HomeChart from "@/components/home/HomeChart.vue";
export default {
  components: {HomeChart},
	data() {
		return {

		};
	},
  mounted(){
    this.init();
  },
  methods:{
    init(){
        if(this.$storage.get('Token')){
          this.$http({
              url: `${this.$storage.get('sessionTable')}/session`,
              method: "get"
          }).then(({ data }) => {
              if (data && data.code != 0) {
              router.push({ name: 'login' })
              }
          });
        }else{
            router.push({ name: 'login' })
        }
    }
  }
};
</script>

<style lang="scss" scoped>
.content {
  display: flex;
  align-items: center;
  flex-direction: column;
  width: 100%;
  height: 100%;
  min-height: 500px;
  text-align: center;
  background: transparent;
  .main-text{
    font-size: 38px;
    font-weight: bold;
    margin-top: 15%;
  }
  .text {
    font-size: 24px;
    font-weight: bold;
    color: #333;
  }
}
</style>
