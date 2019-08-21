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
         <!-- html中marquee跑马灯效果 -->
         <marquee direction="up" height="25" width="300" scrollamount="2" onmouseover="this.stop()" onmouseOut="this.start()">
            <p @click="thgo">营业资质公示，详情请点击查询</p>
            <p @click="togo">工行e支付满100减30！</p>
            <p @click="thgo">不良信息投诉与举报</p>
            <p @click="thgo">营业资质公示，详情请点击查询</p>
            <p @click="togo">工行e支付满100减30！</p>
            <p @click="thgo">不良信息投诉与举报</p>
         </marquee>
      </div>
      <div class="xianshi">
         <img src="../../assets/xianshi.jpg" alt="">
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
      },
      togo(){
         this.$router.push("/Gh");
      },
      thgo(){
         this.$router.push("/Th");
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
   margin-bottom: 10px;
}
.cpn-i>span{
   display: inline-block;
   border-left: 1px solid rgb(204, 201, 201);
}
.cpn-i>span>img{
   width:100%;
   margin-left: -80px;
}
marquee{
   position: relative;
   top:-22px;
   font-family: "楷体";
   font-size: 15px;
}
marquee>p{
   padding: 10px 0;
}
marquee>p:last-child{
   padding-bottom: 0;
}
.xianshi{
   width:94%;
   margin:0 auto ;
}
.xianshi>img{
   width:100%;
}
</style>