<template>
   <div class="merrec">
      <div class="merrec-pro">
         <span class="merrec-img"><img src="../../assets/merrec/mer-1.jpg" alt=""></span>
         <span>直降29元</span>
         <span>泰国金枕榴莲礼盒装1个（1.5-2.5kg/个）</span>
         <span class="merrec-price">
            <span>￥99</span>
            <img src="../../assets/cart.png" alt="">
         </span>
      </div>
      <div class="merrec-pro">
         <span class="merrec-img"><img src="../../assets/merrec/mer-1.jpg" alt=""></span>
         <span>直降29元</span>
         <span>泰国金枕榴莲礼盒装1个（1.5-2.5kg/个）</span>
         <span class="merrec-price">
            <span>￥99</span>
            <img src="../../assets/cart.png" alt="">
         </span>
      </div>
      <div class="merrec-pro">
         <span class="merrec-img"><img src="../../assets/merrec/mer-1.jpg" alt=""></span>
         <span>直降29元</span>
         <span>泰国金枕榴莲礼盒装1个（1.5-2.5kg/个）</span>
         <span class="merrec-price">
            <span>￥99</span>
            <img src="../../assets/cart.png" alt="">
         </span>
      </div>
      <div class="merrec-pro">
         <span class="merrec-img"><img src="../../assets/merrec/mer-1.jpg" alt=""></span>
         <span>直降29元</span>
         <span>泰国金枕榴莲礼盒装1个（1.5-2.5kg/个）</span>
         <span class="merrec-price">
            <span>￥99</span>
            <img src="../../assets/cart.png" alt="">
         </span>
      </div>
   </div>
</template>
<script>
export default {
   data(){
      return{}
   }
}
</script>
<style scoped>
*{
   margin: 0;
   padding: 0;
}
.merrec{
   width:94%;
   margin:0 auto;
   display: flex;
   justify-content:space-between;
   flex-wrap: nowrap;
   overflow-x: scroll;
   overflow-y: hidden;
}
.merrec>.merrec-pro{
   display: flex;
   flex-direction: column;
}
.merrec-img>img{
   width:124px;
}
.merrec>.merrec-pro>span:nth-child(2){
   display: inline-block;
   width:62px;
   height: 20px;
   position: relative;
   top:-23px;
   padding:0 10px ;
   font-size:15px;
   font-family: "楷体";
   font-weight: 700;
   color:#fff;
   line-height: 20px;
   background: #fb3d3d;
   border-radius: 23px 25px 25px 0;
}
.merrec>.merrec-pro>span:nth-child(3){
   display: inline-block;
   width:110px;
   height: 16px;
   line-height: 16px;
   padding:5px 5px;
   font-size: 15px;
   font-family: "楷体";
   font-weight: 700;
   overflow: hidden;
   text-overflow: ellipsis;
   white-space: nowrap;
   position: relative;
   top:-20px;
}
.merrec-price{
   display: flex;
   padding: 5px 15px 5px 4px;
   justify-content: space-between;
   align-items: center;
   position: relative;
   top:-27px;
   font-size: 15px;
   font-family: "楷体";
   color:red;
}
.merrec-price>img{
   width:25px;
}
</style>