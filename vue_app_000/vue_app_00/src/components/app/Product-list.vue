<template>
    <div>
        <mt-swipe :auto="10000">
            <mt-swipe-item>
                <img class="img-bin" src="../../assets/1/1-1.jpg"/>
            </mt-swipe-item>
            <mt-swipe-item>
                <img class="img-bin" src="../../assets/1/1-2.jpg"/>
            </mt-swipe-item>
            <mt-swipe-item>
                <img class="img-bin" src="../../assets/1/1-3.jpg"/>
            </mt-swipe-item>
        </mt-swipe>
        <div class="retu-w">
           <img src="../../assets/goback.png" alt="">
        </div>
        <p>新疆西梅400g</p>
        <div>
           <span>惊喜价23.9元</span>
           <span>一“梅”两吃 软硬皆宜</span>
        </div>
        <div>
           <span>￥23.9</span>
           <span>￥38</span>
           <span>产地：新疆</span>
        </div>
        <div>
           <p>
              <span>促销</span>
              <span>优惠</span>
              <span>惊喜价23.9元</span>
           </p>
           <p></p>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
         
        }
    },
    created(){
      
    },
    methods: {
        
    },
}
</script>
<style scoped>
.mint-swipe .mint-swipe-indicator{
    width: 8px;
    height: 8px;
    display: inline-block;
    border-radius: 100%;
    background: #000 !important;
    opacity: 0 !important;
    margin: 0 3px;
}
.mint-swipe-indicator.is-active {
    background: #ffff00;
}
.mint-swipe {
    position: relative;
    height: 367.39px;
}
.mint-swipe-items-wrap .mint-swipe-item{
    background-repeat:no-repeat;
    background-size:100% 140px;  
}
.img-bin{
    width:100%;
}
.retu-w{
   width:33.81px;
   height:33.81px;
   position: fixed;
   top:10px;
   left: 15px;

}
.retu-w>img{
   width:100%;
}
</style>