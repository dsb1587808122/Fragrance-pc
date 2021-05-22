<template>
  <div class="my_topheader clearfix">
    <div class="container">
      <div class="header-right">
        <ul>
          <li class="login" v-if="isLogined == 1">
            <span class="login_a">您好,{{ userInfo.username }}</span>
            <span class="span"></span>
            <el-button @click="logout" class="logout login_a">退出</el-button>
            <span class="span"></span>
          </li>
          <li class="login" v-else>
            <router-link to="/login" class="login_a">登录</router-link>
            <span class="span"></span>
            <router-link to="/register" class="login_a">注册</router-link>
            <span class="span"></span>
          </li>
          <li>
            <router-link to="javascript:;" class="login_a"
              >我的订单</router-link
            >
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<style>
.my_topheader {
  height: 30px;
  line-height: 30px;
  background: #fff;
  font-size: 12px;
  border-bottom: 1px solid #eee;
}
.my_topheader .header-right {
  float: right;
  color: #999;
}
.my_topheader .header-right ul > li {
  float: left;
}
.my_topheader .header-right .login_a {
  color: #999;
  position: relative;
  display: inline-block;
  height: 30px;
}
</style>

<script>
import { mapState, mapMutations } from "vuex";
export default {
  data() {
    return {
      n: 0,
    };
  },
  computed: {
    ...mapState(["isLogined", "userInfo"]), //,
    // ...mapState({
    //   age1:"age",
    //   sex1:"sex"
    // })
  },
  methods: {
    ...mapMutations(["logoutMutation"]),
    // 用户注销
    logout() {
      localStorage.clear();
      // this.$store.commit("logoutMutation");
      this.logoutMutation();
    },
  },
};
</script>

<style>
.my_topheader {
  height: 30px;
  line-height: 30px;
  font-size: 12px;
  border-bottom: 1px solid #eee;
}
.my_topheader .header-right {
  float: right;
  /* color: #999; */
}
.my_topheader .login {
  background: #fff;
}
.my_topheader .header-right .clear {
  float: left;
  /* color: #999; */
}
.my_topheader .header-right ul {
  display: block;
  list-style: none;
  padding: 0;
  margin: 0;
}
.my_topheader .header-right ul li {
  float: left;
}
.my_topheader .header-right ul li .login_a {
  font-size: 14px;
  float: left;
  color: #999;
}
.my_topheader .header-right ul li .login_a:hover {
  color: #943579;
}
.my_topheader .header-right ul li .span {
  float: left;
  background: #999;
  height: 11px;
  width: 1px;
  margin-left: 19px;
  margin-right: 20px;
  margin-top: 9px;
}
.el-button {
  border: 1px solid transparent !important;
  outline: 0 !important;
  padding: 0 !important;
  border-radius: 0 !important;
  display: inline-block !important;
  color: #999 !important;
}
.el-button:hover{
  background: #fff !important;
  color: #943579 !important;
}
</style>