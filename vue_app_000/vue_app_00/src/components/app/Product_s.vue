<template>
   <div>
      <ul class="pro" @click="onlyactive" id="lis">
         <li data-active="pro-1">进口水果</li>
         <li data-active="pro-2">国产水果</li>
         <li data-active="pro-3">精选肉类</li>
         <li data-active="pro-4">禽类蛋品</li>
         <li data-active="pro-5">海鲜水产</li>
         <li data-active="pro-6">即烹美食</li>
         <li data-active="pro-7">乳品糕点</li>
         <li data-active="pro-8">新鲜蔬菜</li>
         <li data-active="pro-9">方便速食</li>
         <li data-active="pro-10">粮油杂货</li>
         <li data-active="pro-11">食品饮料</li>
         <li data-active="pro-12">礼品礼券</li>
      </ul>
      <mt-tab-container v-model="active">
         <mt-tab-container-item id="pro-1">
            <product :lid=1></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-2">
            <product :lid=1></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-3">
            <product :lid=3></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-4">
            <product :lid=3></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-5">
            <product :lid=3></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-6">
            <product :lid=2></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-7">
            <product :lid=2></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-8">
            <product :lid=1></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-9">
            <product :lid=2></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-10">
            <product :lid=3></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-11">
            <product :lid=2></product>
         </mt-tab-container-item>
         <mt-tab-container-item id="pro-12">
            <product :lid=3></product>
         </mt-tab-container-item>
      </mt-tab-container>
   </div>
</template>
<script>
import product from './Product_s_p'
export default {
   data(){
      return{
        active:"pro-1"
      }
   },
   methods:{
      onlyactive(e){
         var ul=e.target;
         var pro=ul.dataset.active;
         for (var i of lis.children){
            if(i!=e.target){
               i.style="border-left:5px solid #f4f4f4";
            }
         }
         this.active=pro;
         ul.style.border="1px solid #f4f4f4";
         ul.style.backgroundColor="#fff";
         ul.style.borderLeft="3px solid #11B57C";
         ul.style.color="#11B57C";
      }
      
   },
   components:{
      product
   }
}
</script>
<style scoped>
*{
   padding:0;
   margin: 0;
   box-sizing: border-box;
}
ul>li{
   list-style: none;
}
.pro{
   background: #f4f4f4;
   padding:41px 0 0px 0;
   overflow-y: scroll;
   box-sizing: border-box;
   width:83px;
   text-align: center;
}
.pro>li{
   width: 100%;
   padding:20px 5px;
   font-size: 16px;
   font-family: "楷体";
   border-left: 3px solid #f4f4f4;
}
.mint-tab-container-item{
   position: fixed;;
   top:41px;
   left: 83px;
   width:291px;
   height: 87%;
   padding: 10px;
   z-index: 100px;
   overflow-y: scroll;
   overflow-x: hidden;
}
</style>