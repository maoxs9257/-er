<template>
   <div class="jinkou">
      <div @click="ProductList()">
         <img src="../../../assets/all.jpg" alt="">
         <span>全部商品</span>
      </div>
      <div v-for="(item,i) of rows " :key="i" @click="ProLi(item.mid)">
         <img :src="`http://127.0.0.1:3001/`+item.mimg_url" alt="">
         <span>{{item.name}}</span>
      </div>
   </div>
</template>
<script>
export default {
   props:{lid:{default:""}},
   data(){
      return{
         rows:"",
      }
   },
   created(){
      this.LoadPro();
   },
   methods:{
      LoadPro(){
         var url="loadpro";
         var obj={lid:this.lid};
         // console.log(obj);
         this.axios.get(url,{params:obj}).then(res=>{
            // console.log(res);
            this.rows=res.data.data;
            // console.log(this.rows);
         });
      },
      ProductList(){
         this.$router.push('/PListhtml');
      },
      ProLi(mid){
         this.$router.push(
            {
               path:'/ProductList',
               query:{mid:mid}
            }
         );
      }
   }
}
</script>
<style scoped>
.jinkou{
   display: flex;
   flex-wrap: wrap;
}
.jinkou>div{
   width:83px;
   padding:3px;
   text-align: center;
   margin-bottom: 10px;
   font-size: 15px;
   color: dimgray;
}
.jinkou>div>img{
   width:100%;
}
</style>