<template>
   <div class="th">
      <a href="http://www.12377.cn/">
         <img src="../../assets/ts/ts-1.jpg" alt="">
         <img src="../../assets/ts/ts-1.jpg" alt="">
      </a>
      <div class="th2" @click="th">
         <img src="../../assets/ret2.png" alt="">
      </div>
   </div>
</template>
<script>
export default {
   data(){
      return{}
   },
   methods:{
      th(){
         history.go(-1);
      },
   }
}
</script>
<style scoped>
.th{
   width:100%;
   display: flex;
   flex-direction: column;
}
.th>a>img{
   width:100%;
}
.th2{
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
.th2>img{
   width:20px;
   height: 20px;
}
</style>