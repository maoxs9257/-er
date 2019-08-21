<template>
   <div class="gh">
      <img src="../../assets/gh/gh-1.jpg" alt="">
      <img src="../../assets/gh/gh-2.jpg" alt="">
      <img src="../../assets/gh/gh-3.jpg" alt="">
      <img src="../../assets/gh/gh-4.jpg" alt="">
      <img src="../../assets/gh/gh-5.jpg" alt="">
      <img src="../../assets/gh/gh-6.jpg" alt="">
      <div class="ret2" @click="ret">
         <img src="../../assets/ret2.png" alt="">
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
      ret(){
         history.go(-1);
      }
   }
}
</script>
<style scoped>
*{
   margin:0;
   padding:0;
}
.gh{
   width:100%;
   display: flex;
   flex-direction: column;
}
.gh>img{
   width:100%;
}
.ret2{
   width:30px;
   height:30px;
   background:#000;
   opacity: 0.5;
   border-radius: 50%;
   text-align: center;
   line-height: 37px;
   position: fixed;
   top:25px;
   left: 20px;
}
.ret2>img{
   width:20px;
   height: 20px;
}
</style>