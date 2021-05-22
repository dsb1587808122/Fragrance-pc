<template>
  <div class="my_shopping_cart">
    <div class="shopping_cart">
      <div class="cart_title clearfix">
        <span class="cart_title_label info">商品</span>
        <span class="cart_title_label weight">重量</span>
        <span class="cart_title_label price">单价</span>
        <span class="cart_title_label quantity">数量</span>
        <span class="cart_title_label subtotal">小计</span>
        <span class="cart_title_label operation">操作</span>
      </div>

      <div class="cart_body">
        <div class="cart_product" v-for="(cart,i) of cart" :key="i">
          <div class="cart_product_cell info">
            <router-link to="" class="info_img left">
              <img :src="cart.ssrc" alt="" class="img"/>
            </router-link>
            <div class="info_details left">
              <router-link to="">
                <span class="mgtop">{{cart.stitle}}</span>
              </router-link>
              <div class="info_configurable">
                <span>规格：{{cart.sguige}}</span>
              </div>
            </div>
          </div>
          <div class="cart_product_cell weight">
            <span class="mgtop">350g</span>
          </div>
          <div class="cart_product_cell price">
            <p class="original_price mgtop">US${{(cart.sprice / 0.24).toFixed(2)}}</p>
            <p class="current_price tag_reference">US${{cart.sprice}}</p>
          </div>
          <div class="cart_product_cell quantity">
            <button @click="minus(cart)" class="my_btn mgtop">-</button>
            <input type="text" :value="cart.scount" class="quantity-display mgtop" />
            <button @click="add(cart)" class="my_btn mgtop">+</button>
          </div>
          <div class="cart_product_cell subtotal">
            <p class="mgtop">US${{cart.sprice}}</p>
          </div>
          <div class="cart_product_cell operation">
            <a href="javascript:;" class="mgtop operation_delete"  @click="dele(cart.sid)"></a>
          </div>
        </div>
      </div>

      <div id="cartSettlement" class="cart-settlement clearfix">
        <div class="settlement-group left">
          <router-link class="settlement-operation" to="javascript:void(0)">
            删除选中商品
          </router-link>
        </div>
        <div class="settlement-group left">
          <router-link to="/" class="settlement-operation"
            >继续购物</router-link
          >
        </div>
        <div class="settlement-group settlement-group-checkout right">
          <router-link class="btn-checkout" to="javascript:void(0)" @click="count">
            去结算
          </router-link>
        </div>
        <div class="settlement-group settlement-group-price right">
          <div class="settlement-grandtotal clearfix">
            <p class="right">
              <span
                >已选商品
                <strong style="font-size: 14px">{{cart.length}}</strong>
                件
              </span>
              <span
                >合计：
                <strong style="font-size: 18px"> US${{value.toFixed(2)}} </strong>
              </span>
            </p>
          </div>
          <div class="settlement-subtotal">
            <span
              >商品总价：
              <em>US${{value.toFixed(2)}}</em>
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.settlement-group {
  line-height: 78px;
}
.cart-settlement {
  width: 1200px;
  height: 78px;
  background-color: #fff;
  margin-top: 50px;
  border: 1px solid #ececec;
  z-index: 3;
}
.cart-settlement .settlement-operation {
  font-size: 12px;
  color: #666;
  margin: 0 8px;
}
.right {
  float: right;
}
.cart-settlement .settlement-group-checkout .btn-checkout {
  display: block;
  width: 140px;
  height: 76px;
  background-color: #cc3314;
  color: #fff;
  font-size: 16px;
  font-weight: bold;
  text-align: center;
}
.cart-settlement .settlement-group-price {
  max-width: 890px;
  padding: 12px 15px 12px 0;
  position: relative;
}
.cart-settlement .settlement-group-price .settlement-grandtotal {
  font-size: 16px;
  color: #666;
  line-height: 28px;
}
.cart-settlement .settlement-group-price .settlement-subtotal {
  line-height: 20px;
  color: #999;
  font-size: 12px;
  position: absolute;
  width: 1000px;
  right: 15px;
  text-align: right;
  top: 48px;
}
body {
  font-size: 14px;
  color: #333;
  font-family: "Microsoft Yahei";
}
.shopping_cart {
  width: 1200px;
  margin: 0px auto 100px auto;
  background-color: #f6f6f6;
}
.cart_title {
  height: 44px;
  line-height: 44px;
  margin-top: 16px;
  font-size: 0;
  color: #fff;
  background-color: #522555;
}
.cart_title .cart_title_label {
  display: inline-block;
  vertical-align: middle;
  font-size: 12px;
}
.cart_title .cart_title_label.info {
  width: 320px;
  text-align: left;
}

.cart_title .cart_title_label.weight {
  width: 130px;
  text-align: left;
}
.cart_title .cart_title_label.price {
  width: 140px;
  text-align: left;
}
.cart_title .cart_title_label.quantity {
  width: 160px;
  text-align: left;
}
.cart_title .cart_title_label.subtotal {
  width: 145px;
  text-align: left;
}
.cart_title .cart_title_label.operation {
  width: 50px;
  padding-left: 20px;
}
.cart_body {
  border: 1px solid #ededed;
  margin-top: 50px;
  background-color: #fff;
}
.cart_product {
  min-height: 80px;
  padding: 20px 12px;
  border-bottom: 1px dashed #ececec;
  font-size: 0;
}
.cart_product .cart_product_cell {
  display: inline-block;
  vertical-align: top;
  font-size: 12px;
  text-align: center;
}
.cart_product .cart_product_cell.info {
  width: 400px;
  text-align: left;
}
.info_img {
  display: block;
  width: 80px;
  height: 80px;
  padding: 4px;
  border: 1px solid #ececec;
  background-color: #fff;
}
.cart_product .cart_product_cell.info .img {
  width: 70px;
  height: 70px;
}
.cart_product .cart_product_cell.weight {
  width: 120px;
  line-height: 24px;
  text-align: left;
}
.cart_product .cart_product_cell.price {
  width: 120px;
  color: #333;
  text-align: left;
}
.my_shopping_cart p {
  margin-bottom: 0;
  padding: 0;
}
.cart_product .cart_product_cell.price .original_price {
  text-decoration: line-through;
  color: #999;
}
.cart_product .cart_product_cell.quantity {
  width: 175px;
}
.cart_product .cart_product_cell .my_btn {
  background: #fff;
  border-top-left-radius: 2px;
  border-bottom-left-radius: 2px;
  float: left;
  display: block;
  width: 26px;
  height: 26px;
  line-height: 26px;
  border: 1px solid #ccc;
}
.cart_product .cart_product_cell .quantity-display {
  float: left;
  width: 50px;
  height: 26px;
  line-height: 26px;
  outline: none;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  border-left: 1px solid #fff;
  border-right: 1px solid #fff;
  background-color: #fff;
  font-weight: 700;
  font-size: 12px;
  color: #333;
  text-align: center;
}
.cart_product .cart_product_cell.subtotal {
  width: 100px;
  font-weight: bold;
  color: #333;
  text-align: left;
}
.cart_product .cart_product_cell.operation {
  width: 205px;
}
.cart_product .cart_product_cell.info .info_details {
  width: 290px;
  margin-left: 16px;
  line-height: 20px;
}
.mgtop {
  display: inline-block;
  margin-top: 20px;
}
.left {
  float: left;
}
.info_configurable {
  color: #999;
}
.info_configurable span {
  padding-right: 20px;
  margin-top: 20px;
  display: inline-block;
}
.cart_product_cell.operation .operation_delete {
  display: inline-block;
  vertical-align: top;
  width: 30px;
  height: 30px;
  background-image: url("../assets/cart/delete.png");
  background-position: 6px -24px;
}
</style>

<script>
export default {
  data() {
    return {
      value: 0,
      cart:[]
    };
  },
  methods: {
    add(cart) {
      if(cart.scount>=1){
        cart.scount++
      }
      this.count()
    },
    minus(cart) {
      if (cart.scount > 1) {
        cart.scount--;
      }
      this.count()
    },
    // 计算总价
    count(){
      let totalPrice=0;
      console.log(this.cart);
      this.cart.forEach((val,index)=>{
        totalPrice+=val.scount*val.sprice;
      })
      this.value=totalPrice;
      console.log(totalPrice);
    },
    // 获取购物车里的数据
    order(){
      this.axios.get("/order").then(res=>{
        this.cart=res.data.results;
        this.count()
      })
    },

    // 删除商品
    dele(id){
      console.log(id);
      this.axios.get("/delete?id=" + id).then(res=>{
        if(res.data.code==1){
          this.$message({
            message:"成功删除该商品",
            type:"success"
          })
          this.$router.go("/shoppingcart");
        }
      })
    },
  },
  mounted(){
    this.order();
  }
};
</script>