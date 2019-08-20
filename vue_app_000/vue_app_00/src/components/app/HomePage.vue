<template>
   <div class="home">
      <div class="home-c">
         <div class="home-cp" v-for="(item,i) of gpi" :key="i">
            <img :src="item.gimg_url" alt="">
            <span>{{item.title}}</span>
         </div>
      </div>
      <div class="gif-cent">
         <img src="../../assets/p-p1.gif" alt="">
      </div>
      <div class="cpn-i">
         <span><img src="../../assets/news.png" alt=""></span>
      </div>
   </div>
</template>
<script>
export default {
   data(){
      return{
         gpi:[]
      }
   },
   created(){
      this.Gpi();
   },
   methods:{
      Gpi(){
         var url="gpi";
         this.axios.get(url).then(res=>{
            this.gpi=res.data.data;
            // console.log(this.gpi);
         })
      }
   }
}
</script>
<style scoped>
.home{
   background-color:#fff;
   width:100%;
}
.home-c{
   width:85.5%;
   margin:0 auto;
   display: flex;
   justify-content: space-between;
   flex-wrap:wrap;
   padding:8px 16px;
   background-color:#fff;
}
.home-cp{
   display: flex;
   flex-direction: column;
   padding:7px 8px;
}
.home-cp>img{
   width:61.89px;
}
.home-cp>span{
   font-size: 15px;
   font-family: "楷体";
}
.gif-cent{
   width:100%;
   margin:15px auto 5px;
   border-bottom: 1px solid rgb(241, 238, 238);
}
.gif-cent>img{
   width:100%;
}
.cpn-i{
   width:68.23px;
   height: 13.28px;
   padding:7px 6px 7px 101px;
}
.cpn-i>span>img{
   width:100%;
   margin-left: -80px;
}
</style>