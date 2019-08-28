import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Login from './components/app/tab-self/Login.vue'
import Reg from './components/app/tab-self/Reg.vue'
import Xy from './components/app/xy.vue'
import Shoppingcart from './components/app/shopping-cart/Shoppingcart.vue'
import Index from './components/index.vue'
import Gh from './components/app/tab-first/Gh.vue'
import Th from './components/app/tab-first/Th.vue'
import ProductList from './components/app/Product-list'
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/Login',component:Login},
    {path:'/',component:HelloContainer},
    {path:'/Reg',component:Reg},
    {path:'/Xy',component:Xy},
    {path:'/Shoppingcart',component:Shoppingcart},
    {path:'/Index',component:Index},
    {path:'/Gh',component:Gh},
    {path:'/Th',component:Th},
    {path:'/ProductList',component:ProductList}
  ]
})
