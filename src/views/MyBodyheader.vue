<template>
  <div class="list_bodyheader">
      <div class="container">
        <div class="list_nav_menu clearfix">
          <router-link to="/" class="list_router">首页</router-link>
          <el-menu :default-active="activeIndex" mode="horizontal" @select="handle" >
            <el-menu-item index="1">
              全部香水
            </el-menu-item>
            <el-menu-item index="2">
              人气香水
            </el-menu-item>
            <el-menu-item index="3">
              网红同款
            </el-menu-item>
            <el-menu-item index="4">
              品牌香水
            </el-menu-item>
          </el-menu>
        </div>
      </div>
      <div class="list_body clearfix">
        <ul class="list_ul">
          <li v-for="(item, i) of list" :key="i" class="list_li">
            <div class="list_div">
              <router-link :to="`/details/${item.uid.toString()}`"><img :src="item.esrc" class="w-75 list_img"></router-link>
              <div class="list_price">
                <p class="list_pricenew">${{ item.eprice }}</p>
                <p class="list_priceold">${{ (item.eprice / 0.24).toFixed(2) }}</p>
              </div>
              <div class="list_price_rmb">
              参考价：<span class="rmb">¥{{((item.eprice/0.24)+(item.eprice/0.24)*0.6).toFixed(2)}}</span>
              </div>
              <router-link :to="`/details/${item.uid.toString()}`" class="list_biaoti">
                {{ item.etitle }}
              </router-link>
              <router-link :to="`/details/${item.uid.toString()}`" class="list_a">查看详情</router-link>
            </div>
          </li>
        </ul>
      </div>
  </div>
  
</template>

<style>
.list_nav_menu{
  display: flex;
}
.list_router{
  display: inline-block;
  width: 96px;
  height: 60px;
  line-height: 60px;
}
.list_router:hover{
  background:#522555 !important;
  border: #522555 !important;
  color: #fff !important;
}
.list_bodyheader{
    background: #fff;
    border-top: 1px solid #522555;
    margin-bottom: 1px;
  }
.list_bodyheader .list_body{
    border-top:1px solid #522555 !important;
}
.el-menu--horizontal>.el-menu-item.is-active{
  background:#522555 !important;
  border: #522555 !important;
  color: #fff !important;
}
.el-menu-item{color: #333 !important;}
.el-menu-item:hover{
  background: #522555 !important;
  color: #fff !important;
}

.list_body{
  margin: 0 -7px;
}
.list_body .list_ul{
  font-size: 12px;
}
.list_body .list_ul .list_li{
  float: left;
  width: 287px;
  height: 390px;
  margin: 0 7px 14px
}
.list_li{
  position: relative;
  display: block;
  background-color: #fff;
  overflow: hidden;
  border: 1px solid transparent
}
.list_div{
  padding-bottom: 12px
}
.list_img{
  padding-top: 20px;
  padding-bottom: 12px;
  text-align: center;
  width: 248px;
  height: 248px
}
.list_price{
  color: #cc3314;
}
.list_pricenew{
  display: inline-block;
  height: 1em;
  font-size: 20px;
  font-weight: 600;
  line-height: 1;
  vertical-align: top;
  margin: 0;
}
.list_priceold{
  float: right;
  margin-top: 4px;
  color: #999;
  text-decoration: line-through;
  margin: 0;
}
.list_price_rmb{
  height: 1em;
  margin: 11px 0;
  line-height: 1;
  color: #999;
}
.list_biaoti{
  height: 38px;
  white-space: normal;
  line-height: 19px;
  color: #333;
  overflow: hidden;
  text-overflow: ellipsis;
  padding-right: 20px;
  padding-left: 20px
}
.list_a{
  display: block;
  margin-top: 12px;
  text-align: center;
  width: 250px;
  border: 1px solid #522555;
  background-color: #522555;
  margin: 12px 20px 0px 20px;
  line-height: 30px;
  color: #fff;
}
.list_biaoti:hover{
  color: #522555;
}
.list_a:hover{
  color: #fff;
}
</style>

<script>
export default {
  data(){
    return {
      activeIndex: '1',
      details:[],
      index:"1",
      list:[]
    }
  },
  methods: {
      handle(key,keypath) {
        // console.log(key);
        // console.log(keyPath);
        // console.log(key);
        if(key==1){
          this.axios.get("/index").then(res=>{
            this.list=res.data.results;
            console.log(key);
            console.log(res.data.results);
          })
        } else {
            this.axios.get("/list?id="+key).then(res=>{
            this.list=res.data.results;
            console.log(this.list)
            });
        }
      },
      getdetails(){
            
        let uid = this.$route.params.uid;
        this.axios.get("/details",{
          params:{
            uid:uid
          }
        }).then((res)=>{
          this.details=res.data.results;
          console.log(this.details);
          
        })
      }
  },
  // created(){
  //   this.handle();
  //   this.getdetails();
  // }
  mounted(){
    //通过axios工具向web服务器发送请求   
    this.axios.get("/index").then(res=>{
          this.list=res.data.results;
    });
  },
}
</script>