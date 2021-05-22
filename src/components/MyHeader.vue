<template>
  <div class="my_header">
    <div class="container">
      <div><a href="/" class="my_header_logo"></a></div>
      <div class="my_header_middle"><img src="../assets/header/pic1.png" alt=""></div>
      <div class="my_header_middle_right">
        <div class="search_grid">
          <div class="search_box">
            <form class="search_form_btn">
              <div class="form_search">
                <input type="text" id="input_search" placeholder="娇兰" class="_input">
                <div class="my_button"><button class="my_button"><span class="span_search"></span></button>
                </div>
              </div>
            </form>
          </div>
          <div class="search_all">
            <span class="search_item">热门搜索：</span>
            <a href="javascript:;" class="search_item other">娇韵诗</a>
            <a href="javascript:;" class="search_item a_hover">Burberry</a>
            <a href="javascript:;" class="search_item other">4711</a>
            <a href="javascript:;" class="search_item other">火之洗礼</a>
          </div>
        </div>
      </div>
      <div class="my_shoppingcart">
        <div class="cart">
          <router-link to="/shoppingcart" class="allbaby">购物车</router-link>
          <div class="num_box">0</div>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
  a{text-decoration: none !important;}
  .my_header>.container{display: flex;}
  .my_header_logo{
    display: block;
    width: 215px;
    height:122px;
    background: url(../assets/header/logo.png)  0 40% no-repeat;
  }
  .my_header_middle{
    height: 120px;
    line-height: 120px;
    margin-left: 29px;
  }
  .my_header_middle_right{
    width: 368px;
    margin-top: 43px;
    font-size: 12px;
  }
  .search_box,.search_grid{
    width: 360px;
    height: 38px;
  }
  .search_grid{position: relative;}
  .search_form_btn{
    display: block;
    border: 1px solid #666;
    border-radius: 19px;
  }
  .from_search{display: block;}
  ._input{
    height: 34px;
    line-height: 34px;
    vertical-align: middle;
    background: #fff;
    width: 270px;
    border: none;
    margin: 2px 0 0 2px;
    outline: none;
    border-radius: 19px 0 0 19px;
  }
  .my_button{
    position: absolute;
    top: 1px;
    right: 1px;
    width: 54px;
    height: 34px;
    cursor: pointer;
    background: #fff;
    border: none;
    vertical-align: middle;
    color: #fff;
    font-size: 16px;
    outline: none;
    border-radius: 0 19px 19px 0;
  }
  .span_search{
    position: absolute;
    right: 20px;
    top: 8px;
    background-image: url(../assets/header/sousuo.png);
    width: 20px ;
    height: 19px;
  }
  .search_all{
    margin: 9px 0 0 22px;
    line-height: 23px;
  }
  .search_all .search_item:first-child{padding-left: 0;}
  .search_all .search_item{
    height: 12px;
    line-height: 12px;
    color: #999;
    font-size: 12px;
    padding: 0 12px 0 0;
  }
  .search_item.other{
    color: #943579;
  }
  .a_hover:hover{color: #943579;}
  .my_shoppingcart{
    width: 123px;
    margin-top: 43px;
  }
  .cart{
    position: relative;
    background: #333 url(../assets/header/shoppingcart.png) 24px no-repeat;
    background-size: 23px 20px;
    width: 123px; height: 38px;
    line-height: 38px;
    border: 1px solid #ececec;
    color: #fff;
    font-size: 12px;
    background-color: #522555;
    border-radius: 19px;
  }
  .allbaby{
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 9;
    margin-left: 0;
    text-indent: -80px;
    color: #fff;
    font-size: 14px;
  }
  .allbaby:hover{color: #fff;}
  .num_box{
    position: absolute;
    top: -7px;
    right: 0;
    background-color: #cc3314;
    border-radius: 7px;
    padding: 0 4px;
    height: 17px;
    line-height: 17px;
    text-align: center;
    color: #fff;
    font-size: 12px;
    z-index: 10;
  }
</style>

<script>
export default {
  
}
</script>