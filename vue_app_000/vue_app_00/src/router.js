import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Login from './components/app/Login.vue'
import Reg from './components/app/Reg.vue'
import Xy from './components/app/xy.vue'
import User from './components/app/User.vue'
import Shoppingcart from './components/app/Shoppingcart.vue'
import Index from './components/index.vue'
import Titlebar from './components/app/Titlebar.vue'
import Carousel from './components/app/Carousel.vue'
import HomePage from './components/app/HomePage.vue'
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/Login',component:Login},
    {path:'/',component:HelloContainer},
    {path:'/Reg',component:Reg},
    {path:'/Xy',component:Xy},
    {path:'/User',component:User},
    {path:'/Shoppingcart',component:Shoppingcart},
    {path:'/Index',component:Index},
    {path:'/Titlebar',component:Titlebar},
    {path:'/Carousel',component:Carousel},
    {path:'/HomePage',component:HomePage}
  ]
})
