<template>
  <div class="mybody_footer">
    <div class="container">
      <div class="left">
        <div class="jianjie">
          <h2>FragranceNet 简介</h2>
          <span></span>
          <p>FragranceNet 1997年在美国成立，以线上销售香水香氛而著名，自成立以来一直受用户的信赖和好评，目前全球用户已超过600万，在线销售商品超过18000个，包括热销的香水、美妆护肤及各类护理产品等。</p>
        </div>
        <ul class="erweima list-unstyled">
          <li>
            <img src="../assets/body_footer/gfwx.jpg" alt="官方微信">
            <p>关注官方微信</p>
          </li>
          <li>
            <img src="../assets/body_footer/gfwb.png" alt="官方微博">
            <p>关注官方微博</p>
          </li>
        </ul>
      </div>
      <div class="right">
        <div class="footer_content">
          <div class="footer_middle" >
            <div class="title" v-for="(v,i1) of footer.titles" :key="i1">{{v}}</div>
            <a href="javascript:;" class="item" v-for="(c1,i2) of footer.content1" :key="i2">{{c1}}</a>
          </div>
        </div>
        <div class="bottomRight">
          <div class="footer_middle">
            <div class="title">中文客服</div>
            <div class="email">
              <p>
                <img src="../assets/body_footer/kf.png" alt="在线客服">
                <span>在线客服</span>
              </p>
              <p>
                <img src="../assets/body_footer/email.png" alt="邮箱联系">
                <span> 客服邮箱：china@service.fragrancenet.cn</span>
              </p>
              <p>
                <img src="../assets/body_footer/sj.png" alt="服务时间">
                <span>服务时间：9:00 - 18:00（北京时间），周末及节假日除外</span>
              </p>
            </div>
          </div>
          <div class="footer_style">
            <div>支付方式</div>
            <img src="../assets/body_footer/zffs.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return {
      footer:{
        titles:["关于我们","购物指南","物流配送","售后服务","网站政策"],
        content1:["商品介绍","购物流程","配送方式","退货政策","服务条款","正品承诺","活动规则","运费标准","退货流程","隐私权保护政策","联系我们","常见问题","关税发票","联系客服","消费者告知书"]
      }
    }
  }
}
</script>

<style>
.mybody_footer{
  width: 100%;
  background: #522555;
  padding-top: 48px;
  overflow: hidden;
  height: 400px;
  color: #d5c9d6;
}
.mybody_footer>.container{
  position: relative;
  text-align: left;
}
.mybody_footer .left{
  float: left;
  width: 384px;
}
.mybody_footer .left .jianjie{
  display: inline-block;
  height: 181px;
  width: 384px;
  vertical-align: top;
}
.mybody_footer .left .jianjie h2{
  height: 57px;
  line-height: 57px;
  font-size: 16px;
  color: #fff;
  font-weight: 700;
  margin: 0;
}
.mybody_footer .left .jianjie span{
  display: block;
  width: 70px;
  border-top: 2px solid #fff;
  margin-bottom: 17px;
}
.mybody_footer .left .jianjie p{
  line-height: 24px;
  font-size: 12px;
  color: #d5c9d6;
  width: 100%;
  display: block;
  text-align: justify !important;
}
.mybody_footer .left .erweima{
  height: 161px;
  padding: 0;
  margin: 0;
}
.mybody_footer .left li{
  display: inline-block;
  margin-right: 20px;
  width: 112px;
  height: 125px;
  background: #fff;
  border-radius: 5px;
}
.mybody_footer .left li img{
  display: block;
  margin: 5px auto 4px;
  width: 95px;
  height: 95px;
}
.mybody_footer .left li p{
  height: 12px;
  line-height: 12px;
  font-size: 12px;
  color: #333;
  text-align: center;
}
.mybody_footer .right{
  float: right;
  margin-top: 20px;
  margin-right: 32px;
  width: 667px;
}
.mybody_footer .right .footer_middle{
  width: 600px;
  /* float: left; */
  display: flex;
  color: #d5c9d6;
  justify-content: space-around;
  flex-flow: wrap;
}
.mybody_footer .right .footer_content{
  height: 180px;
}
.mybody_footer .right .footer_middle .title{
  line-height: 16px;
  color: #fff;
  margin-bottom: 20px;
  text-align: left;
  font-size: 16px;
  font-weight: 700;
  width: 120px;
}
.mybody_footer .right .footer_middle a{
  display: block;
  line-height: 28px;
  font-size: 12px;
  color: #d5c9d6 !important;
  width: 120px;
}
 /* .bottomRight{
  margin-top: 180px !important;
} */
.mybody_footer .right .bottomRight .footer_middle{
  width: 340px;
  display: inline-block;
}
.mybody_footer .right .bottomRight .title{
  line-height: 16px;
  color: #fff;
  margin-bottom: 20px;
  font-size: 16px;
  font-weight: 700;
}
.mybody_footer .right .bottomRight .email{
  font-size: 12px;
  line-height: 26px;
}
.mybody_footer .right .bottomRight p{
  margin: 0;
  padding: 0;
  font-size: 12px;
  line-height: 26px;
}
.mybody_footer .right .bottomRight img{
  margin-right: 6px;
  vertical-align: text-bottom;
}
.mybody_footer .right .bottomRight .footer_style{
  bottom: 81px;
  left: 0;
  width: 292px;
  float: right;
  color: #fffefe;
  margin-top: -2px;
}
.mybody_footer .right .bottomRight .footer_style div{
  font-weight: bolder;
}
.mybody_footer .right .bottomRight .footer_style img{
  display: block;
  width: 245px;
  height: 28px;
  margin-top: 22px;
}
</style>