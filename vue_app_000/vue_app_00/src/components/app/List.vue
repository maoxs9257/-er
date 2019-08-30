<template>
   <div class="list-father">
      <div class="list">
         <span>
            <img src="../../assets/300.jpg" alt="">
         </span>
         <div class="list-p">
            <p>Zespri佳沛新西兰阳光金奇异果3.3kg原箱(22-25个)</p>
            <p>巨无霸金果 软糯香甜 用券有惊喜</p>
            <span>限时抢购</span>
            <p class="list-s">
               <span>¥249</span>
               <span>¥298</span>
               <span>3.3kg/箱</span>
               <img src="../../assets/add.png" alt="">
            </p>
         </div>
      </div>
      <div class="list">
         <span>
            <img src="../../assets/300.jpg" alt="">
         </span>
         <div class="list-p">
            <p>Zespri佳沛新西兰阳光金奇异果3.3kg原箱(22-25个)</p>
            <p>巨无霸金果 软糯香甜 用券有惊喜</p>
            <span>限时抢购</span>
            <p class="list-s">
               <span>¥249</span>
               <span>¥298</span>
               <span>3.3kg/箱</span>
               <img src="../../assets/add.png" alt="">
            </p>
         </div>
      </div>
      <div class="list">
         <span>
            <img src="../../assets/300.jpg" alt="">
         </span>
         <div class="list-p">
            <p>Zespri佳沛新西兰阳光金奇异果3.3kg原箱(22-25个)</p>
            <p>巨无霸金果 软糯香甜 用券有惊喜</p>
            <span>限时抢购</span>
            <p class="list-s">
               <span>¥249</span>
               <span>¥298</span>
               <span>3.3kg/箱</span>
               <img src="../../assets/add.png" alt="">
            </p>
         </div>
      </div>
      <div class="list">
         <span>
            <img src="../../assets/300.jpg" alt="">
         </span>
         <div class="list-p">
            <p>Zespri佳沛新西兰阳光金奇异果3.3kg原箱(22-25个)</p>
            <p>巨无霸金果 软糯香甜 用券有惊喜</p>
            <span>限时抢购</span>
            <p class="list-s">
               <span>¥249</span>
               <span>¥298</span>
               <span>3.3kg/箱</span>
               <img src="../../assets/add.png" alt="">
            </p>
         </div>
      </div>
      <div class="list">
         <span>
            <img src="../../assets/300.jpg" alt="">
         </span>
         <div class="list-p">
            <p>Zespri佳沛新西兰阳光金奇异果3.3kg原箱(22-25个)</p>
            <p>巨无霸金果 软糯香甜 用券有惊喜</p>
            <span>限时抢购</span>
            <p class="list-s">
               <span>¥249</span>
               <span>¥298</span>
               <span>3.3kg/箱</span>
               <img src="../../assets/add.png" alt="">
            </p>
         </div>
      </div>
      <div class="list">
         <span>
            <img src="../../assets/300.jpg" alt="">
         </span>
         <div class="list-p">
            <p>Zespri佳沛新西兰阳光金奇异果3.3kg原箱(22-25个)</p>
            <p>巨无霸金果 软糯香甜 用券有惊喜</p>
            <span>限时抢购</span>
            <p class="list-s">
               <span>¥249</span>
               <span>¥298</span>
               <span>3.3kg/箱</span>
               <img src="../../assets/add.png" alt="">
            </p>
         </div>
      </div>
      <div class="list">
         <span>
            <img src="../../assets/300.jpg" alt="">
         </span>
         <div class="list-p">
            <p>Zespri佳沛新西兰阳光金奇异果3.3kg原箱(22-25个)</p>
            <p>巨无霸金果 软糯香甜 用券有惊喜</p>
            <span>限时抢购</span>
            <p class="list-s">
               <span>¥249</span>
               <span>¥298</span>
               <span>3.3kg/箱</span>
               <img src="../../assets/add.png" alt="">
            </p>
         </div>
      </div>
      <div class="list">
         <span>
            <img src="../../assets/300.jpg" alt="">
         </span>
         <div class="list-p">
            <p>Zespri佳沛新西兰阳光金奇异果3.3kg原箱(22-25个)</p>
            <p>巨无霸金果 软糯香甜 用券有惊喜</p>
            <span>限时抢购</span>
            <p class="list-s">
               <span>¥249</span>
               <span>¥298</span>
               <span>3.3kg/箱</span>
               <img src="../../assets/add.png" alt="">
            </p>
         </div>
      </div>
      <div class="img-1" @click="retur">
         <img src="../../assets/retu.png" alt="">
      </div>
      <div class="img-2" @click="shoppingCart">
         <img src="../../assets/shopc.png" alt="">
      </div>
   </div>
</template>
<script>
export default {
   data(){
      return{

      }
   },
   methods:{
      retur(){
         history.go(-1);
      },
      shoppingCart(){
         this.$router.push('/');
      }
   }
}
</script>
<style scoped>
*{
   padding:0;
   margin:0;
   box-sizing: border-box;
}
.list-father{
   margin-top: 49px;
}
.list{
   padding:16px 10px;
   display: flex;
   flex-wrap: nowrap;
   border-top: 1px solid rgb(230, 230, 230);
}
.list>span:first-child>img{
   width:104px;
}
.list>.list-p>p:first-child{
   font-size: 14px;
   padding:5px 2px;
}
.list>.list-p>p:nth-child(2){
   font-size: 12px;
   padding:5px 2px;
}
.list>.list-p>span:nth-child(3){
   display: inline-block;
   font-size: 12px;
   border:1px solid #11B57C;
   color:#11B57C;
   padding:5px;
   border-radius: 5px;
   margin:5px 0 10px;
}
.list-s>span:first-child{
   color:#fd3d3d;
   font-size: 14px;
}
.list-s>span:nth-child(2){
   color:#999;
   display: inline-block;
   margin-left: 10px;
   text-decoration: line-through;
   font-size: 12px;
}
.list-s>span:nth-child(3){
   color:#999;
   display: inline-block;
   margin-left: 10px;
   font-size: 12px;
}
.list-s>img{
   width:24px;
   height:24px;
   margin-left: 97px;
   position: relative;
   top:11px;
}
.img-1,.img-2{
   text-align: center;
   width:34px;
   height:34px;
   background: rgba(0, 0, 0,.3);
}
.img-1{
   border-radius: 5px 5px 0 0 ;
   border-bottom: 1px solid #fff;
   position: fixed;
   bottom:190px;
   right: 2px;
}
.img-2{
   border-radius:0 0 5px 5px;
   position: fixed;
   bottom:156px;
   right: 2px;
}
</style>