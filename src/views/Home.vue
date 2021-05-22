<template>
  <div class="home">
    
    <!-- <my-bodyheader></my-bodyheader> -->
    <my-carousel></my-carousel>
    <my-bodyindex></my-bodyindex>
    <my-bodyfooter></my-bodyfooter>
  </div>
</template>

<script>
// @ is an alias to /src
import MyTopheader from "../components/MyTopheader.vue"
import MyHeader from "../components/MyHeader.vue"
// import MyBodyheader from "../views/MyBodyheader.vue"
import MyCarousel from "../components/MyCarousel.vue"
import MyBodyindex from "../views/MyBodyindex.vue"
import MyBodyfooter from "../views/MyBodyfooter.vue"
import MyFooter from "../components/MyFooter.vue"
import ShoppingCart from "../views/ShoppingCart"


export default {
  components: {
    MyTopheader,
    // MyBodyheader,
    MyCarousel,
    MyBodyindex,
    MyBodyfooter,
    ShoppingCart,
  }
}
</script>
