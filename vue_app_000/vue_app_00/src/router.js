import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Login from './components/app/Login.vue'
import Reg from './components/app/Reg.vue'
import Xy from './components/app/xy.vue'
import User from './components/app/User.vue'
import Shoppingcart from './components/app/Shoppingcart.vue'
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/Login',component:Login},
    {path:'/',component:HelloContainer},
    {path:'/Reg',component:Reg},
    {path:'/Xy',component:Xy},
    {path:'/User',component:User},
    {path:'/Shoppingcart',component:Shoppingcart}
  ]
})
