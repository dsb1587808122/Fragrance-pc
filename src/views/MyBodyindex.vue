<template>
  <!-- 商品热销开始 -->
  <div class="container">
    <div class="my_body_index">
      <div class="kong"></div>
      <h2 class="my_h21">热卖排行榜</h2>
      <ul class="list-unstyled">
        <li v-for="(item, i) of index.slice(0, 5)" :key="i" class="li_border">
          <router-link :to="`/details/${item.uid.toString()}`"
            ><img :src="item.esrc"
          /></router-link>
          <router-link :to="`/details/${item.uid.toString()}`" class="jianju_a">
            {{ item.etitle }}
          </router-link>
          <div class="price">
            <p class="pricenew">${{ item.eprice }}</p>
            <p class="priceold">${{ (item.eprice / 0.24).toFixed(2) }}</p>
          </div>
          <div class="price_rmb">
            参考价：<span class="rmb">¥{{((item.eprice/0.24)+(item.eprice/0.24)*0.6).toFixed(2)}}</span>
          </div>
          <div class="dazhe">2.4折</div>
          <button class="index_cart" @click="join(item.uid)"></button>
        </li>
      </ul>
      <!-- 商品热销结束 -->

      <!-- 新品推荐开始 -->
      <h2 class="my_h22">新品推荐</h2>
      <ul class="list-unstyled">
        <li v-for="(item, i) of index.slice(5, 10)" :key="i" class="li_border">
          <router-link :to="`/details/${item.uid.toString()}`"
            ><img :src="item.esrc"
          /></router-link>
          <router-link :to="`/details/${item.uid.toString()}`" class="jianju_a">
            {{ item.etitle }}
          </router-link>
          <div class="price">
            <p class="pricenew">${{ item.eprice }}</p>
            <p class="priceold">${{ (item.eprice / 0.24).toFixed(2) }}</p>
          </div>
          <div class="price_rmb">
            参考价：<span class="rmb">¥{{((item.eprice/0.24)+(item.eprice/0.24)*0.6).toFixed(2)}}</span>
          </div>
          <div class="dazhe">2.4折</div>
          <button class="index_cart" @click="join(item.uid)"></button>
        </li>
      </ul>
      <!-- 新品推荐结束 -->

      <!-- 畅销推荐开始 -->
      <h2 class="my_h23">畅销推荐</h2>
      <ul class="list-unstyled">
        <li v-for="(item, i) of index.slice(10, 20)" :key="i" class="li_border">
          <router-link :to="`/details/${item.uid.toString()}`"
            ><img :src="item.esrc"
          /></router-link>
          <router-link :to="`/details/${item.uid.toString()}`" class="jianju_a">
            {{ item.etitle }}
          </router-link>
          <div class="price">
            <p class="pricenew">${{ item.eprice }}</p>
            <p class="priceold">${{ (item.eprice / 0.24).toFixed(2) }}</p>
          </div>
          <div class="price_rmb">
            参考价：<span class="rmb">¥{{((item.eprice/0.24)+(item.eprice/0.24)*0.6).toFixed(2)}}</span>
          </div>
          <div class="dazhe">2.4折</div>
          <button class="index_cart" @click="join(item.uid)"></button>
        </li>
      </ul>
      <!-- 畅销推荐结束 -->

      <!-- 猜你喜欢开始 -->
      <h2 class="my_h24">猜你喜欢</h2>
      <ul class="list-unstyled">
        <li v-for="(item, i) of index.slice(20, 25)" :key="i" class="li_border">
          <router-link :to="`/details/${item.uid.toString()}`"
            ><img :src="item.esrc"
          /></router-link>
          <router-link :to="`/details/${item.uid.toString()}`" class="jianju_a">
            {{ item.etitle }}
          </router-link>
          <div class="price">
            <p class="pricenew">${{ item.eprice }}</p>
            <p class="priceold">${{ (item.eprice / 0.24).toFixed(2) }}</p>
          </div>
          <div class="price_rmb">
            参考价:<span class="rmb">¥{{((item.eprice/0.24)+(item.eprice/0.24)*0.6).toFixed(2)}}</span>
          </div>
          <div class="dazhe">2.4折</div>
          <button class="index_cart" @click="join(item.uid)"></button>
        </li>
      </ul>
      <!-- 猜你喜欢结束 -->
    </div>
  </div>
</template>

<style>
.index_cart{
  position: absolute;
  width: 36px;
  bottom: 0px;
  right: 22px;
  color: #fff;
  background: #522555 url("../assets/body_index/index_cart.png") no-repeat 50%;
  height: 36px;
  border-radius: 36px;
  cursor: pointer;
  border: none;
  display: inline-block;
  text-align: center;
}
.li_border:hover {
  border: 1px solid #522555;
  
}
.my_body_index {
  margin: 20px 0;
}
.kong {
  height: 50px;
}
.my_body_index .my_h21,
.my_body_index .my_h22,
.my_body_index .my_h23,
.my_body_index .my_h24 {
  display: block;
  margin: 0 auto;
  font-size: 22px;
  font-weight: 700;
  text-align: center;
  height: 24px;
  color: #333;
  line-height: 24px;
  /* padding-bottom: 50px; */
  position: relative;
}
.my_body_index .my_h24 {
  margin-top: 700px;
}
.my_body_index .my_h22,
.my_body_index .my_h23 {
  margin-top: 410px;
}
/* .my_body_index .my_h2::before,
.my_body_index .my_h2::after {
  content: "";
  width: 100px;
  border: 1.5px solid #333;
  position: absolute;
  top: 50%;
  background: #333;
} */
/* .my_body_index .my_h2::before {
  transform: translateX(-120%);
}
.my_body_index .my_h2::after {
  transform: translateX(20%);
} */
.my_body_index ul {
  float: left;
  margin-bottom: 100px;
  padding: 0;
}
.my_body_index li {
  width: 186px;
  margin-right: 34px;
  position: relative;
  height: 300px;
  border: 1px solid transparent;
  float: left;
}
.my_body_index li > a > img {
  width: 150px;
  height: 150px;
  margin: 17px auto 0;
}
.my_body_index li > .jianju_a {
  width: 100%;
  height: 40px;
  font-size: 13px;
  line-height: 20px;
  padding: 0 15px;
  color: #333;
  text-align: left;
  display: inline-block;
}
.my_body_index li > .jianju_a:hover {
  color: #522555;
  text-decoration: underline !important;
}
.my_body_index li .price {
  padding: 0 20px;
  text-align: left;
  height: 34px;
}
.my_body_index li .price > p {
  margin: 0;
}
.my_body_index .pricenew {
  height: 18px;
  line-height: 18px;
  font-weight: 700;
  color: #000;
  margin-bottom: 5px !important;
  margin-top: 10px !important;
}
.my_body_index .priceold {
  color: #999;
  height: 12px;
  line-height: 12px;
  text-decoration: line-through;
  font-size: 12px;
}
.my_body_index .price_rmb {
  position: absolute;
  padding: 12px 20px 0;
  margin: 0;
  font-size: 12px;
  color: #333;
}
.my_body_index .dazhe {
  height: 18px;
  line-height: 18px;
  font-size: 12px;
  padding: 0 5px;
  margin-left: 8px;
  background: none;
  color: #cc3314;
  position: absolute;
  bottom: 38px;
  right: 20px;
  font-weight: 700;
}
</style>

<script>
export default {
  data() {
    return {
      index: [],
    };
  },
  methods: {
    getperfume(value) {
      this.axios.get("/index").then((res) => {
        this.index = res.data.results;
      });
    },
    join(id){
      console.log(id);
      this.axios.get("/shopping?id="+id).then(res=>{
        if(!res.data.uid){
          this.$message({
            message:"加入成功",
            type:"success"
          })
          
        }else{
          this.$message({
            message:"加入失败，购物车已存在此商品！",
            type:"error"
          })
        }
      })
    }
    // 当点击某个id的商品时 实现跳转
    // clickperfume(value){
    //   let id=res.data.results.uid[0]
    //   this.axios.get("/index","uid=" + this.id).then((res)=>{
    //     this.$router.push("/details/" + this.id);
    //   })
    // }
  },
  mounted() {
    this.getperfume();
  },
};
</script>

