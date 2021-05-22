import Vue from 'vue'
import Vuex from 'vuex'
import axios from "axios"
import router from "../router"
import {MessageBox} from "mint-ui"

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isLogined:localStorage.getItem("isLogined") || 0,
    userInfo:JSON.parse(localStorage.getItem("userInfo"))|| {}
  }, 
  mutations: {
    // 用户登录成功
    loginMutation(state,payload){
      //改变用户登录的状态
      state.isLogined = 1;
      //将获取到的登录用户信息存储到info中去
      state.userInfo = payload;
    },
    // 用户注销
    logoutMutation(state){
      state.isLogined = 0;
      state.userInfo = {};     
    },
  },
  actions: {
    login_actions(context,payload){
      // 向服务器发送异步请求
      axios.post("/login",payload).then(res=>{
        if(res.data.code==1){
          
          context.commit('loginMutation',res.data.userInfo);
          // 将用户的登录状态保存到webstorage中
          localStorage.setItem('isLogined',1);
          localStorage.setItem('userInfo',JSON.stringify(res.data.userInfo));
          
          // 页面跳转
          router.push('/')
        }else{
          // 显示警示对话框
          alert('用户名或密码错误')
        }
      });
      // console.log(payload);
      // console.log("现在要发送请求，以实现用户的登录操作了")
    }
  },
  modules: {
  }
})
