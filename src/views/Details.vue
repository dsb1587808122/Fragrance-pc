<template>
  <div class="my_details">
    <div class="container">
      <div class="mianbaoxie">
        <ul class="breadcrumb bg-transparent">
          <li class="breadcrumb-item">
            <router-link to="/" class="daohang">主页</router-link>
          </li>
          <li class="breadcrumb-item">
            <router-link to="javascript:;" class="daohang">{{
              details.title
            }}</router-link>
          </li>
        </ul>
      </div>
      <div class="products">
        <!-- 商品的详细数据开始 -->
        <div class="pd clearfix">
          <div class="products_pic p_left">
            <div class="products_pic_big">
              <router-link to="javascript:;">
                <div class="zoomPad">
                  <img :src="details.esrc" alt="" class="w-100" title="" />
                </div>
              </router-link>
            </div>
            <div class="products_pic_thumbs">
              <a href="javascript:;" class="arrow_left p_left"></a>
              <div class="thumb p_left">
                <ul class="clearfix">
                  <li>
                    <router-link to="javascript:;" class="small_pic"
                      ><img :src="details.esrc" alt="" class="w-100"
                    /></router-link>
                  </li>
                </ul>
              </div>
              <a href="javascript:;" class="arrow_right p_right"></a>
            </div>
          </div>
          <div class="products_detail p_right">
            <h1 class="products_detail_title">
              {{ details.etitle }}
            </h1>
            <p class="products_short"></p>
            <!-- 商品各种价格 开始 -->
            <div class="products_detail_price">
              <div class="info">
                <div class="dt">促 销 价</div>
                <div class="dd">
                  <b class="zhekou_price">US${{ details.eprice }}</b>
                  <span class="zhekou">2.4折</span>
                  <span class="cankao_price"
                    >参考价：¥{{
                      (
                        details.eprice / 0.24 +
                        (details.eprice / 0.24) * 0.6
                      ).toFixed(2)
                    }}</span
                  >
                </div>
              </div>
              <div class="info">
                <div class="dt">原 价</div>
                <div class="dd">
                  <del>US${{ (details.eprice / 0.24).toFixed(2) }}</del>
                </div>
              </div>
            </div>
            <!-- 商品各种价格 结束 -->

            <!-- 活动开始 -->
            <div class="info custom-promotion" style="display: block">
              <div class="dt">活 动</div>
              <div class="dd">
                <p class="info_p">
                  <i class="tag"></i>
                  &gt;&gt;新品专区
                  <a href="javascript:;">查看详情&gt;&gt;</a>
                </p>
                <p class="info_p">
                  <i class="tag"></i>
                  &gt;&gt;热销排行榜
                  <a href="javascript:;">查看详情&gt;&gt;</a>
                </p>
                <p class="info_p">
                  <i class="tag"></i>
                  &gt;&gt;猜你喜欢
                  <a href="javascript:;">查看详情&gt;&gt;</a>
                </p>
              </div>
            </div>
            <!-- 活动结束 -->

            <!-- 优惠券 -->
            <div class="info coupon-get" style="display: block">
              <div class="dt">优 惠 券</div>
              <div class="dd">
                <p class="info_p">
                  <span class="tag">新用户满减券</span>
                  <span class="coupon-content">满$115减$6</span>
                  <a href="javascript:;" class="btn-get available">立即领取</a>
                </p>
              </div>
            </div>
            <!-- 优惠券 -->

            <!-- 商品规格开始 -->
            <div class="guige">
              <dl class="attr-box clearfix info">
                <dt class="attr-head dt"><label>规 格</label></dt>
                <dd title="100ml" class="attr-item cls-selected dd">100ml</dd>
              </dl>
            </div>
            <!-- 商品规格结束 -->

            <!-- 商品数量开始 -->
            <div class="info">
              <div class="dt">数 量</div>
              <div class="dd clearfix js-panel-cartcount" id="quantity-control">
                <button @click="minus" class="my_btn">-</button>
                <input type="text" :value="value" class="quantity-display" />
                <button @click="add" class="my_btn">+</button>
                <span class="limitation"
                  >商品限购
                  <span sel-id="detail-text-quantity-maximum">3</span> 件</span
                >
              </div>
            </div>
            <!-- 商品数量结束 -->

            <!-- 加购按钮开始 -->
            <div class="d_button clearfix">
              <button class="cart_btn p_left" @click="join(details.uid)">
                加入购物车
              </button>
            </div>
            <!-- 加购按钮结束 -->
          </div>
        </div>
        <!-- 商品的详细数据结束 -->
        <!-- 商品详情开始 -->
        <div class="product_review">
          <!-- 商品详情的标签 -->
          <div class="details_tabs">
            <span class="active">商品详情</span>
            <span class="detail_comment_tab"
              >商品评价(<i class="comment-count">0</i>)</span
            >
            <span>常见问题</span>
          </div>
          <!-- 商品详情的标签 结束 -->
          <!-- 商品详情的介绍 -->
          <div class="details_tabcont active">
            <div class="product_description">
              <div class="d_title">
                <span class="d_sub">规格参数</span>
              </div>
              <div class="specification_table">
                <ul class="clearfix">
                  <li>
                    <span class="key" title="中文名称">中文名称</span>
                    <span
                      class="val"
                      title="ISSEY MIYAKE 三宅一生 一生之水女士淡香水 EDT 100ml"
                      >：{{ details.etitle }}</span
                    >
                  </li>
                  <li>
                    <span class="key" title="外文名称">品牌</span>
                    <span class="val" title="L'EAU D'ISSEY; EDT SPRAY 3.3 OZ"
                      >：{{ details.euname }}</span
                    >
                  </li>
                  <li>
                    <span class="key" title="规格">规格</span>
                    <span class="val" title="100ml"
                      >：{{ details.eguige }}</span
                    >
                  </li>
                </ul>
              </div>
              <img :src="details.details_pic1" alt="" />
              <img :src="details.details_pic2" alt="" />
              <img :src="details.details_pic3" alt="" />
              <img :src="details.details_pic4" alt="" />
              <img :src="details.details_pic5" alt="" />
              <img :src="details.details_pic6" alt="" />
            </div>
          </div>
        </div>
        <!-- 商品详情结束 -->
      </div>
    </div>
  </div>
</template>

<style>
.my_details {
  background: #f4f4f4;
}
.my_details .daohang:hover {
  color: #522555;
}
.my_details .mianbaoxie {
  height: 45px;
  line-height: 45px;
  font-size: 13px;
}
.my_details .mianbaoxie .breadcrumb {
  margin: 0;
  padding: 0;
}
.breadcrumb-item + .breadcrumb-item::before {
  content: ">";
}
.my_details .products {
  font-family: Microsoft Yahei, simsun, sans-serif;
  background: #fff;
}
.my_details .products > .pd {
  padding: 30px;
}
.my_details .products > .pd > .products_pic {
  width: 440px;
}
.my_details .p_left {
  float: left;
}
.my_details .p_right {
  float: right;
}

.my_details .products > .pd > .products_pic > .products_pic_big {
  position: relative;
  width: 400px;
  height: 400px;
  margin-bottom: 10px;
  border: 1px solid #ececec;
}
.my_details .products > .pd > .products_pic > .products_pic_big > .zoomPad {
  position: relative;
  float: left;
  z-index: 99;
  cursor: crosshair;
}
.my_details .products > .pd > .products_pic > .products_pic_thumbs {
  width: 440px;
  height: 64px;
}
.my_details
  .products
  > .pd
  > .products_pic
  > .products_pic_thumbs
  > .arrow_left,
.my_details
  .products
  > .pd
  > .products_pic
  > .products_pic_thumbs
  > .arrow_right {
  position: relative;
  display: inline-block;
  width: 28px;
  height: 62px;
  border: 1px solid #ececec;
}
.my_details
  .products
  > .pd
  > .products_pic
  > .products_pic_thumbs
  > .arrow_right {
  left: -40px;
}
.arrow_left::before {
  left: 10px !important;
  transform: rotate(-45deg) !important;
}
.arrow_right::before {
  display: block;
  right: 10px !important;
  transform: rotate(135deg) !important;
  /* content:""; */
}
.arrow_left:hover,
.arrow_right:hover {
  border-color: #522555 !important;
}
.my_details .products > .pd > .products_pic > .products_pic_thumbs > .thumb {
  position: relative;
  width: 370px;
  height: 64px;
  margin: 0;
}
.my_details .products > .pd > .products_pic > .products_pic_thumbs > .thumb ul {
  position: absolute;
  top: 0;
  left: 0;
  width: auto;
  font-size: 0;
  margin: 0;
  white-space: nowrap;
}
.my_details .products > .pd > .products_pic > .products_pic_thumbs > .thumb li {
  display: inline-block;
  margin-left: 10px;
  cursor: pointer;
}
.my_details
  .products
  > .pd
  > .products_pic
  > .products_pic_thumbs
  > .thumb
  a.small_pic {
  display: block;
  width: 62px;
  height: 62px;
  border: 1px solid #522555;
}
.my_details .products_detail {
  width: 600px;
}
.my_details .products_detail .products_detail_title {
  line-height: 27px;
  margin-bottom: 8px;
  font-size: 18px;
  color: #333;
  font-weight: 700;
}
.my_details .products_detail .products_short {
  line-height: 20px;
  margin-bottom: 16px;
  font-size: 12px;
  color: #999;
}
.my_details .products_detail_price {
  background: #faf1f0 !important;
  clear: both;
  padding: 15px 0;
  border-bottom: 1px dashed #ddd;
}
.my_details .products_detail .products_detail_price .info {
  position: relative;
  margin-top: 6px;
  padding-left: 82px;
}
.my_details .dt {
  position: absolute;
  top: 0;
  left: 0;
  line-height: 26px;
  padding-left: 10px;
  font-family: simsun, sans-serif;
  font-size: 13px;
  color: #999;
  text-align: center;
}
.my_details .dd {
  line-height: 26px;
  color: #333;
  text-align: left;
}
.my_details .zhekou_price {
  color: #cc3314;
  font-weight: 700;
  font-size: 20px;
}
.my_details .zhekou {
  display: inline-block;
  background: #cc3314;
  position: relative;
  top: -4px;
  line-height: 20px;
  padding: 0 10px;
  font-size: 12px;
  color: #fff;
}
.my_details .cankao_price {
  margin-left: 2rem;
  color: #999;
  display: inline;
  font-size: 12px;
}
.my_details del {
  text-decoration: line-through;
  color: #999;
  font-size: 12px;
}
.my_details .custom-promotion {
  margin-top: 10px;
  margin-bottom: 0;
}
.my_details .info {
  position: relative;
  padding-left: 82px;
}
.my_details .custom-promotion .dd {
  color: #f15151;
}
.my_details .dd {
  font-size: 12px;
}
.my_details .custom-promotion a {
  color: #0b94d9;
}
.my_details .coupon-get .info_p {
  height: 20px;
  margin-bottom: 7px;
}
.my_details .coupon-get .info_p .tag {
  display: inline-block;
  height: 20px;
  line-height: 19px;
  box-sizing: border-box;
  font-size: 12px;
  margin-right: 10px;
  font-style: normal;
  vertical-align: top;
  color: #d72245;
  padding: 0 9px;
  color: #cc3314;
  border: 1px solid #cc3314;
}
.my_details .coupon-get .info_p .coupon-content {
  display: inline-block;
  max-width: 315px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  height: 20px;
  line-height: 20px;
}
.my_details .coupon-get .info_p .btn-get {
  text-decoration: underline !important;
  color: #cc3314;
  margin-left: 18px;
  height: 20px;
  line-height: 20px;
  vertical-align: top;
}
.my_details .guige .dt {
  font-weight: normal;
}
.my_details .guige .attr-item {
  float: left;
  min-height: 26px;
  margin-right: 10px;
  margin-bottom: 10px;
  padding: 0 12px;
  border: 1px solid #ccc;
  line-height: 22px;
  background: #fff;
  color: #333;
  cursor: pointer;
}
.my_details .guige .attr-item:hover {
  background-color: #522555;
  color: #fff;
  border-color: #522555;
}
.my_details .info .my_btn {
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
.my_details .info .quantity-display {
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
.my_details .info .limitation {
  float: left;
  margin-left: 1em;
  color: #333;
}
.my_details .d_button {
  margin-top: 30px;
  padding-left: 10px;
}
.my_details .cart_btn {
  background: #cc3314;
  border: none;
  width: 168px;
  height: 44px;
  font-weight: 700;
  font-size: 16px;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.2s ease-in-out;
}
.my_details .cart_btn:hover {
  background: #ea4322;
}
.my_details .product_review {
  padding-top: 120px;
  background: #fff;
}
.my_details .details_tabs {
  position: relative;
  top: 0;
  left: 0;
  height: 58px;
  border-bottom: 1px solid #ececec;
}
.my_details .details_tabs span {
  display: inline-block;
  height: 55px;
  line-height: 55px;
  margin: 0 145px;
  border-bottom: 3px solid #fff;
  font-size: 18px;
  cursor: pointer;
}
.my_details .details_tabs span i {
  font-style: normal;
}
.my_details .details_tabs span.active {
  border-color: #522555;
  color: #522555;
  font-weight: 700;
}
.my_details .details_tabcont {
  display: block;
}
.my_details .product_description {
  margin: 0 auto;
  padding-bottom: 60px;
  font-size: 14px;
  color: #333;
}
.my_details .product_description .d_title {
  height: 30px;
  line-height: 30px;
  margin: 24px auto 15px;
  font-weight: 700;
  font-size: 16px;
  text-align: left;
}
.my_details .d_sub {
  margin-left: 45px;
}
.my_details .product_description .specification_table {
  line-height: 24px;
  margin-bottom: 60px;
  color: #666;
}
.my_details .product_description .specification_table ul {
  height: 72px;
  margin-left: 0px;
  overflow: hidden;
}
.my_details .product_description .specification_table li {
  float: left;
  width: 330px;
  margin-left: 45px;
  font-size: 0;
  text-align: left;
}
.my_details .key,
.my_details .val {
  display: inline-block;
  height: 24px;
  font-size: 12px;
  overflow: hidden;
  vertical-align: middle;
  text-align: left;
}
.my_details .val {
  width: 23em;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.my_details .key {
  width: 4em;
  text-align: justify;
  text-align-last: justify;
}
</style>

<script>
// import MyBodyheader from "../views/MyBodyheader.vue";
export default {
  // components: {
  //   MyBodyheader,
  // },
  data() {
    return {
      // 数量的按钮
      value: 0,
      details: [],
    };
  },
  methods: {
    add() {
      this.value++;
    },
    minus() {
      if (this.value > 0) {
        this.value--;
      }
    },
    getdetails() {
      let uid = this.$route.params.uid;
      this.axios
        .get("/details", {
          params: {
            uid: uid,
          },
        })
        .then((res) => {
          this.details = res.data.results;
          console.log(this.details);
        });
    },
    join(id) {
      console.log(id);
      this.axios.get("/shopping?id=" + id).then((res) => {
        if (!res.data.uid.value) {
          this.$message({
            message: "加入成功",
            type: "success",
          });
        } else {
          this.$message({
            message: "加入失败，购物车已存在此商品！",
            type: "error",
          });
        }
      });
    },
  },
  mounted() {
    this.getdetails();
  },
};
</script>