import Vue from 'vue'
import VueRouter from 'vue-router'

// 主页
import Home from '../views/Home.vue'

// 页头--登录注册
// import MyTopheader from "../components/MyTopheader.vue"
// 页头--搜索
// import MyHeader from "../components/MyHeader.vue"


// 内容--二级菜单
import MyBodyheader from "../views/MyBodyheader.vue"
// 内容--轮播图
import MyCarousel from "../components/MyCarousel.vue"
// 内容--首页循环商品
import MyBodyindex from "../views/MyBodyindex.vue"
// 内容--页脚
import MyBodyfooter from "../views/MyBodyfooter.vue"


// 内容--详情页
import Details from "../views/Details.vue"

// 购物车
import ShoppingCart from "../views/ShoppingCart.vue"


// 页脚
// import MyFooter from "../components/MyFooter.vue"


// 登录
import Login from "../views/Login.vue"
// 注册
import Register from "../views/Register.vue"
Vue.use(VueRouter)

const routes = [
  {
    path:"/shoppingcart",
    component:ShoppingCart
  },
  // 详情页接口
  {
    path:"/details/:uid",
    component:Details
  },
  
  // 注册接口
  {
    path:"/register",
    component:Register
  },
  // 登录接口
  {
    path:"/login",
    component:Login
  },
  // 内容--页脚 接口
  {
    path:"/bodyfooter",
    component:MyBodyfooter
  },
  // 内容--首页商品接口
  {
    path:"/index/:uid",
    component:MyBodyindex
  },
  // 内容--轮播图接口
  {
    path:"/carousel",
    component:MyCarousel
  },
  // 内容--页头接口
  {
    path:"/bodyheader",
    component:MyBodyheader
  },
  // 主页
  {
    path: '/',
    component: Home
  },
  {
    path: '/about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  routes
})

export default router
