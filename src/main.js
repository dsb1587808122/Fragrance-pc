import Vue from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import axios from "axios";
import qs from 'qs';
import moment from 'moment';

// 引入页头--登录、注册
import MyTopheader from "./components/MyTopheader.vue"
// 引入页头--搜索
import MyHeader from "./components/MyHeader.vue"
// 引入页脚
import MyFooter from "./components/MyFooter.vue"

// 引入Element-UI组件
import ElementUI from "element-ui";
// 引入Element-UI样式文件
import "element-ui/lib/theme-chalk/index.css";
// 通过Vue.use()方法将Element UI 注册为Vue的插件

//导入MintUI的所有组件
import MintUI from 'mint-ui';

//导入MintUI的样式文件
import 'mint-ui/lib/style.min.css';

Vue.use(ElementUI);
Vue.use(MintUI);

// 将页头--登录、注册 设置为全局组件
Vue.component("my-topheader",MyTopheader);
// 将页头--搜索 设置为全局组件
Vue.component("my-header",MyHeader);
// 将页脚  设置为全局组件
Vue.component("my-footer",MyFooter);

axios.defaults.baseURL="http://127.0.0.1:3000"
Vue.prototype.axios=axios;
Vue.prototype.moment = moment;
Vue.prototype.qs = qs;
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
