<template>
  <div class="login">
    <div class="container clearfix">
      <div class="image">
        <a href="/"
          ><img src="../assets/LoginRegister/LoginRegister.jpg" alt=""
        /></a>
      </div>
      <div class="user_login">
        <h3 class="h3">用户登录</h3>
        <router-link class="a" to="/register">注册</router-link>
        <div class="logo">
          <ul>
            <li>
              <input
                type="text"
                placeholder="用户名"
                class="input"
                v-model="username"
                @input="usernamevail"
              />
            </li>
            <span class="errMsg" :class="usernameClass">{{ usernamemsg }}</span>
            <li>
              <input
                type="password"
                placeholder="密码"
                class="input"
                v-model="password"
                @input="passwordvail"
              />
            </li>
            <span class="errMsg" :class="passwordClass">{{ passwordmsg }}</span>
            <li>
              <router-link to="javascript:;" class="wjpassword"
                >忘记密码</router-link
              >
            </li>
            <li>
              <input
                type="button"
                value="立即登录"
                class="button"
                @click="handle"
              />
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.errMsg {
  display: inline-block;
  margin: 2px 0;
  padding: 3px 10px;
}
.success {
  background-color: lightGreen;
  border: 1px solid green;
  color: green;
}
.fail {
  background-color: pink;
  border: 1px solid red;
  color: red;
}
.user_login .button,
.user_login .button:hover {
  background: #522555 !important;
  border-color: #522555 !important;
}
a {
  color: #000;
  text-decoration: none;
}
.login {
  background: #f7f0f7;
}
.login .image {
  width: 580px;
  height: 466px;
  margin-top: 80px;
  overflow: hidden;
  float: left;
}
.login .image img {
  width: 100%;
}
.login .user_login {
  float: right;
  width: 396px;
  height: 404px;
  margin-top: 92px;
  background: #fff;
  padding: 0 30px;
}
.clearfix::before {
  content: " ";
  clear: both;
  display: table;
  height: 0;
  visibility: hidden;
}
.login .h3 {
  display: block;
  position: relative;
  margin-bottom: 24px;
  top: 30px;
  left: -15px;
  font-size: 16px;
  font-weight: 700;
  width: 100px;
}
.login .a {
  color: #943579 !important;
  display: block;
  font-size: 12px;
  font-weight: 700;
  margin-top: 4px;
  position: relative;
  top: -12px;
  right: -150px;
}
.login .input {
  vertical-align: middle;
  font-size: 12px;
  padding-left: 30px;
  height: 36px;
  line-height: 36px;
  width: 320px;
  box-sizing: border-box;
  border: 1px solid #ccc;
}
.login .wj {
  margin-bottom: 25px;
}
.login .wjpassword {
  font-size: 12px;
  color: #999;
  line-height: 20px;
  position: relative;
  left: 145px;
}
.login .button {
  background: #522555;
  width: 340px;
  margin: 22 auto 26px !important;
  height: 40px;
  font-size: 16px;
  color: #fff;
  font-weight: 700;
}
.login .button:hover {
  background: #943579;
}
</style>

<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      usernameClass: {
        success: false,
        fail: false,
      },
      passwordClass: {
        success: false,
        fail: false,
      },
      usernamemsg: "",
      passwordmsg: "",
    };
  },
  methods: {
    usernamevail() {
      let reg = /^[a-zA-z]\w{3,16}$/;
      let usernamedata = reg.test(this.username);
      if (usernamedata == true) {
        this.usernameClass = {
          success: true,
          fail: false,
        };
        this.usernamemsg = "√";
        return true;
      } else {
        this.usernameClass = {
          success: false,
          fail: true,
        };
        this.usernamemsg = "用户名错误";
        return false;
      }
    },
    passwordvail() {
      let reg = /^\w{6,12}$/;
      let passworddata = reg.test(this.password);
      if (passworddata == true) {
        this.passwordClass = {
          success: true,
          fail: false,
        };
        this.passwordmsg = "√";
        return true;
      } else {
        this.passwordClass = {
          success: false,
          fail: true,
        };
        this.passwordmsg = "密码错误";
        return false;
      }
    },
    handle() {
      //会引发短路现象
      if (this.usernamemsg == "√" && this.passwordmsg == "√") {
        if (this.usernamevail() && this.passwordvail()) {
          let obj = {
            username: this.username,
            password: this.password,
          };
          let str = this.qs.stringify(obj);
          this.axios.post("/login", str).then((res) => {
            //登录失败
            if (res.data.code == 0) {
              this.$messagebox
                .confirm("登录失败,是否注册新用户", "提示信息")
                .then(() => {
                  this.$router.push("/register");
                })
                .catch((error) => {});
            }
            // 登录成功 -- 后续还需要继续调整
            if (res.data.code == 1) {
              // 提交Mutations,以改变用户的登录状态及信息
              this.$store.commit("loginMutation", res.data.userInfo);
              // 将用户登录状态的相关信息存储到WebStorage中
              localStorage.setItem("isLogined", 1);
              //因为在webStorage中,键值只能为字符串,所以
              //需要通过JSON.stringify()将服务器返回对象数据转换为字符串类型,然后再通过setItem()方法添加到WebStorage中
              localStorage.setItem(
                "userInfo",
                JSON.stringify(res.data.userInfo)
              );
              // 跳转到首页
              this.$router.push("/");
            }
          });
        }
      } else {
        alert("账号或密码错误");
      }
    },
  },
};
</script>