<template>
   <div>
      <ul class="pro">
         <li data-active>进口水果</li>
         <li>国产水果</li>
         <li>精选肉类</li>
         <li>禽类蛋品</li>
         <li>海鲜水产</li>
         <li>即烹美食</li>
         <li>乳品糕点</li>
         <li>新鲜蔬菜</li>
         <li>方便速食</li>
         <li>粮油杂货</li>
         <li>食品饮料</li>
         <li>礼品礼券</li>
      </ul>
      <ul class="pro-2">
         <li class>
            <div class="p-pro" id="p-pro1">
               <div>
                  <img src="../../assets/merrec/mer-5.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/merrec/mer-5.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/merrec/mer-5.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/merrec/mer-5.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/merrec/mer-5.jpg" alt="">
                  <p>奇异果</p>
               </div>
            </div>
         </li>
         <li class>
            <div class="p-pro" id="p-pro2">
               <div>
                  <img src="../../assets/bigimg/bi-1.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/bigimg/bi-1.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/bigimg/bi-1.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/bigimg/bi-1.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/bigimg/bi-1.jpg" alt="">
                  <p>奇异果</p>
               </div>
            </div>
         </li>
         <li class>
            <div class="p-pro" id="p-pro3">
               <div>
                  <img src="../../assets/merrec/mer-6.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/merrec/mer-6.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/merrec/mer-6.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/merrec/mer-6.jpg" alt="">
                  <p>奇异果</p>
               </div>
               <div>
                  <img src="../../assets/merrec/mer-6.jpg" alt="">
                  <p>奇异果</p>
               </div>
            </div>
         </li>
         <li class>
            <div>
               4
            </div>
         </li>
         <li class>
            <div>
               5
            </div>
         </li>
         <li class>
            <div>
               6
            </div>
         </li>
         <li class>
            <div>
               7
            </div>
         </li>
         <li class>
            <div>
               8
            </div>
         </li>
         <li class>
            <div>
               9
            </div>
         </li>
         <li class>
            <div>
               10
            </div>
         </li>
         <li class>
            <div>
               11
            </div>
         </li>
         <li class>
            <div>
               12
            </div>
         </li>
      </ul>
   </div>
</template>
<script>
export default {
   data(){
      return{
        
      }
   }
}
</script>
<style scoped>
*{
   padding:0;
   margin: 0;
}
ul>li{
   list-style: none;
}
.pro{
   background: #f4f4f4;
   padding:41px 8px 16px 0;
   overflow-y: scroll;
   box-sizing: border-box;
   width:83px;
   text-align: center;
}
.pro>li{
   width: 100%;
   padding:20px 0;
   font-size: 16px;
   font-family: "楷体";
}
.pro-2{
   position: absolute;
   top:40px;
   left: 83px;
}
.p-pro{
   display: flex;
   flex-wrap:wrap;
}
.p-pro>div{
   width:83px;
   height:96px;
}
.p-pro>div>img{
   width:100%;
}
</style>