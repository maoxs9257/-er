<template>
    <div class="father">
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="tab-first">
                <titlebar></titlebar>
                <carousel></carousel>
                <homepage></homepage>
                <merrec did="1"></merrec>
                <prod></prod>
                <merrec did="2"></merrec>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab-fenlei">
                分类
            </mt-tab-container-item>
            <mt-tab-container-item id="tab-eat">
                吃什么
            </mt-tab-container-item>
            <mt-tab-container-item id="shopping-cart">
                购物车
            </mt-tab-container-item>
            <mt-tab-container-item id="tab-self">
                <user></user>
            </mt-tab-container-item>
        </mt-tab-container>
        <mt-tabbar v-model="active" fixed>
            <mt-tab-item id="tab-first" @click.native="changeState(0)">
                <tabbaricon 
                    :selectedImage="require('../assets/hand1.png')" 
                    :normalImage="require('../assets/hand.png')" 
                    :focused="currentIndex[0].isSelect">
                </tabbaricon>
                首页
            </mt-tab-item>
            <mt-tab-item id="tab-fenlei" @click.native="changeState(1)">
                <tabbaricon 
                    :selectedImage="require('../assets/fl.png')" 
                    :normalImage="require('../assets/fl1.png')" 
                    :focused="currentIndex[1].isSelect">
                </tabbaricon>
                分类
            </mt-tab-item>
            <mt-tab-item id="tab-eat" @click.native="changeState(2)">
                <tabbaricon 
                    :selectedImage="require('../assets/eat1.png')" 
                    :normalImage="require('../assets/eat.png')" 
                    :focused="currentIndex[2].isSelect">
                </tabbaricon>
                吃什么
            </mt-tab-item>
            <mt-tab-item id="shopping-cart" @click.native="changeState(3)">
                <tabbaricon 
                    :selectedImage="require('../assets/cart3.png')" 
                    :normalImage="require('../assets/cart2.png')" 
                    :focused="currentIndex[3].isSelect">
                </tabbaricon>
                购物车
            </mt-tab-item>
            <mt-tab-item id="tab-self" @click.native="changeState(4)">
                <tabbaricon 
                    :selectedImage="require('../assets/self.png')" 
                    :normalImage="require('../assets/self1.png')" 
                    :focused="currentIndex[4].isSelect">
                </tabbaricon>
                我的
            </mt-tab-item>           
        </mt-tabbar>
    </div>
</template>
<script>
import User from './app/User.vue'
import TabBaricon from './app/TabBarIcon.vue'
import Titlebar from './app/Titlebar.vue'
import Carousel from './app/Carousel.vue'
import HomePage from './app/HomePage.vue'
import MerRec from './app/MerRec.vue'
import Prod_img from './app/Prod_img.vue'
export default {
    data(){
        return{
            active:"tab-first",
            //创建数组保存图片焦点状态
            currentIndex:[
                {isSelect:true},
                {isSelect:false},
                {isSelect:false},
                {isSelect:false},
                {isSelect:false}
            ], 
        }
    },
    components:{
        "user":User,
        "tabbaricon":TabBaricon,
        "titlebar":Titlebar,
        "carousel":Carousel,
        "homepage":HomePage,
        "merrec":MerRec,
        "prod":Prod_img
    },
    methods:{
        changeState(n){
            for (var i=0;i<this.currentIndex.length;i++){
                if(i==n){
                    this.currentIndex[i].isSelect=true;
                }else{
                    this.currentIndex[i].isSelect=false;
                }
            }
        }
    }
}
</script>
<style scoped>
.mint-tabbar > .mint-tab-item.is-selected{
    color:lime;
}
.mint-tab-item-label{
    font-size: 16px;
    font-family:"楷体";
}
.father{
   padding-bottom: 57px;
}
</style>