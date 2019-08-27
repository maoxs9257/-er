<template>
   <div class="bigimg">
      <img :src="`http://127.0.0.1:3001/`+rows" alt="">
   </div>
</template>
<script>
export default {
   props:{bid:{default:""}},
   data(){
      return{
         rows:""
      }
   },
   created(){
      this.LoadMore();
   },
   methods:{
      LoadMore(){
         var url="bigimg";
         var obj={bid:this.bid};
         // console.log(obj);
         this.axios.get(url,{params:obj}).then(res=>{
            this.rows=res.data.data[0].bimg_url;
            // console.log(rows);
         })
      }
   }
}
</script>
<style scoped>
.bigimg{
   width: 100%;
}
.bigimg>img{
   width:100%;
}
</style>