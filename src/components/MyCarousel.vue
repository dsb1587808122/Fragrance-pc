<template>
  <!-- 首页轮播 -->
  <div class="my_body_carousel">
    <div class="bodyheader">
      <div class="container">
        <ul class="menu clearfix">
          <li class="active">
            <router-link to="/">首页</router-link>
          </li>
          <li>
            <router-link to="/bodyheader">新品上线</router-link>
          </li>
          <li>
            <router-link to="/bodyheader">全部香水</router-link>
          </li>
          <li>
            <router-link to="/bodyheader">人气香水</router-link>
          </li>
          <li>
            <router-link to="/bodyheader">网红香水</router-link>
          </li>
          <li>
            <router-link to="/bodyheader">品牌香水</router-link>
          </li>
        </ul>
      </div>
    </div>
    <div class="block">
      <span class="demonstration"></span>
      <el-carousel height="500px">
        <el-carousel-item v-for="(item,i) of carousel" :key="i">
          <img :src="item.src" alt="" style="width:100%; height:100%;">
        </el-carousel-item>
      </el-carousel>
    </div>
  </div>
  <!-- 首页轮播结束 -->
</template>

<style>
.bodyheader {
  background: #fff;
  border-top: 1px solid #522555;
  border-bottom: 1px solid #522555;
  margin-bottom: 1px;
}
.bodyheader .menu {
  position: relative;
  height: 40px;
  white-space: nowrap;
  list-style: none;
  padding: 0;
  margin: 0;
}
.bodyheader .menu li {
  float: left;
  line-height: 40px;
}
.bodyheader .menu li.active a {
  background: #522555;
  color: #fff;
}
.bodyheader .menu li a {
  display: inline-block;
  height: 40px;
  padding: 0 26px;
}
.bodyheader .menu li a:hover {
  background: #522555;
  color: #fff;
  cursor: pointer;
}

/* 轮播图 */
.el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 150px;
    margin: 0;
  }

  .el-carousel__item:nth-child(2n) {
     background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
     background-color: #d3dce6;
  }
  .el-carousel__indicator.is-active button{
     background-color: #943579 !important;
     width: 70px !important;
  }
  .el-carousel__button{
    width: 25px !important;
    background-color: #fafafa !important;
  }
  .el-carousel__arrow{
    background-color: #943579 !important;
  }
  .el-carousel__arrow i{
    color: #d3dce6 !important;
  }
</style>

<script>
export default {
  data() {
    return {
      first_nav: ["全部香水", "人气香水", "网红同款", "品牌香水"],
      
      carousel:[]
    };
  },
  methods: {
    // list(){
    //   let uid = this.$route.params.uid;
    //   this.axios.get("/list",{
    //     parmas:{
    //       uid:uid
    //     }
    //   }).then((res)=>{
    //     this.liebiao=res.data.results;
    //     console.log(this.liebiao);
    //   })
    // }
    
  },
  mounted() {
    // this.list();
    
    this.axios.get("/carousel").then(res=>{
      this.carousel=res.data.results;
    })
  },
};
</script>