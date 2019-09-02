<template>
   <div>
      <div class="img-details" v-for="(item,i) of details" :key="i">
         <img v-lazy="`http://127.0.0.1:3001/`+item" alt="">
      </div>
      <div class="retu-w" @click="retuT">
         <img src="../../assets/goback.png" alt="">
      </div>
   </div>
</template>
<script>
export default {
   data(){
      return{
         details:''
      }
   },
   created(){
      this.LoadDetails();
   },
   methods:{
      retuT(){
            history.go(-1);
        },
      LoadDetails(){
         var details=this.$route.query.details;
         // console.log(details);
         this.details=details.split(",");
         // console.log(this.details);
      }  
   }
}
</script>
<style scoped>
.img-details{
   width:100%;
   display: flex;
   flex-direction: column;
}
.img-details>img{
   width: 100%;
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