<template>
  <div class="register">
    <div class="container">
      <div class="user_register clearfix">
        <h3>
          <span class="span_left">欢迎注册</span>
          <span class="span_right"
            >我已注册，现在就
            <router-link to="/login">登录</router-link>
          </span>
        </h3>
        <div class="biaodan">
          <div class="text_left">
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
              <span class="errMsg" :class="usernameClass">{{
                usernamemsg
              }}</span>
              <li>
                <input
                  type="password"
                  placeholder="密码"
                  class="input"
                  v-model="password"
                  @input="passwordvail"
                />
              </li>
              <span class="errMsg" :class="passwordClass">{{
                passwordmsg
              }}</span>
              <li>
                <input
                  type="password"
                  placeholder="确认密码"
                  class="input"
                  v-model="conpassword"
                  @input="conpasswordvail"
                />
              </li>
              <span class="errMsg" :class="conpasswordClass">{{
                conpasswordmsg
              }}</span>
              <li>
                <input
                  type="button"
                  value="免费注册"
                  class="button"
                  @click="handle"
                />
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>


<style>
.register {
  background: #f5f5f5;
}
.register > .container {
  padding-top: 30px;
  /* border-top: 1px dashed #ccc; */
}
.user_register {
  background: #fff;
  padding: 0 30px 40px;
  text-align: center;
}
.user_register h3 {
  height: 64px;
  line-height: 24px;
  padding: 20px 0;
  font-size: 12px;
  color: #999;
  border-bottom: 1.5px dashed #ccc;
  border-top: 1.5px dashed #ccc;
  margin: 0;
}
.user_register .span_left,
.user_register .span_right {
  height: 24px;
  line-height: 24px;
  float: left;
}
.user_register .span_left {
  display: inline-block;
  font-size: 16px;
  font-weight: 700;
  color: #333;
  margin-left: 24px;
}
.user_register .span_right {
  float: right;
  font-size: 12px;
  color: #999;
  font-weight: 400;
  /* display: inline-block; */
}
.user_register .span_right a {
  color: #943579;
  margin-left: 5px;
}
.user_register .biaodan {
  margin: 50px 0;
  padding: 50px 0;
  /* border-bottom: 1.5px dashed #ccc; */

}

.user_register .biaodan .text_left span {
  display: inline-block;
  width: 475px;
  height: 40px;
  line-height: 32px;
  text-align: left;
  margin: 8px 0;
}
.user_register .input {
  vertical-align: middle;
  font-size: 12px;
  padding-left: 30px;
  height: 40px;
  line-height: 36px;
  width: 475px;
  box-sizing: border-box;
  border: 1px solid #ccc;
}

.user_register .button {
  width: 475px;
  height: 40px;
  font-size: 16px;
  color: #fff;
  margin: 30px auto 30px;
  background: #522555;
  outline: 0;
  border: 0;
}
.user_register .button:hover {
  background: #943579;
}
</style>


<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      conpassword: "",
      usernameClass: {
        success: false,
        fail: false,
      },
      passwordClass: {
        success: false,
        fail: false,
      },
      conpasswordClass: {
        success: false,
        fail: false,
      },
      usernamemsg: "",
      passwordmsg: "",
      conpasswordmsg: "",
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
      } else {
        this.usernameClass = {
          success: false,
          fail: true,
        };
        this.usernamemsg = "请输入正确的用户名";
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
      } else {
        this.passwordClass = {
          success: false,
          fail: true,
        };
        this.passwordmsg = "密码为6-12位";
      }
    },
    conpasswordvail() {
      if (this.password == this.conpassword) {
        this.conpasswordClass = {
          success: true,
          fail: false,
        };
        this.conpasswordmsg = "√";
      } else {
        this.conpasswordClass = {
          success: false,
          fail: true,
        };
        this.conpasswordmsg = "×";
      }
    },
    handle() {
      if (
        this.usernamemsg == "√" &&
        this.passwordmsg == "√" &&
        this.conpasswordmsg == "√"
      ) {
        //现在要发送相关的用户名、密码到WEB服务器
        let object = {
          username: this.username,
          password: this.password,
        };
        this.axios.post("/register", this.qs.stringify(object)).then((res) => {
          //  代表用户注册成功
          if (res.data.code == 1) {
            this.$message({
              message: "注册成功",
              type: "success",
            });
            this.$router.push("/");
          } else {
            // 弹出提示框
            alert("用户已经存在");
          }
        });
      } else {
        alert("请按照要求重新输入");
      }
    },
  },
};
</script>