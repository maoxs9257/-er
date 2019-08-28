<template>
   <div>
      <div class="prod_img">
         <img v-for="(item,i) of list" :key="i" :src="`http://127.0.0.1:3001/`+item" />
      </div>
   </div>
</template>
<script>
export default {
   data(){
      return{
         list:[],
         iid:1
      }
   },
   created(){
      this.LoadImg();
   },
   methods:{
      LoadImg(){
         var url="prod_img";
         var obj={iid:this.iid};
         this.axios.get(url,{params:obj}).then(res=>{
            // 取出结果，并且结果按照 , 分割成功数组
            var rows=res.data.data[0].iimg_url.split(",");            
            this.list=rows;
            // console.log(this.list[1]);
         })
      }
   }
}
</script>
<style scoped>
.prod_img{
   width:100%;
   display: flex;
   flex-direction: column;
}
.prod_img>img{
   width:100%;
}
</style>