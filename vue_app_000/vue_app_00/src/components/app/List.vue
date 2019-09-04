<template>
   <div class="list-father">
      <div class="list" v-for="(item,i) of list" :key="i" @click="Download(item.mid)">
         <span>
            <img :src="`http://127.0.0.1:3001/`+item.mimg_url" alt="">
         </span>
         <div class="list-p">
            <p>{{item.title}}</p>
            <p>{{item.mtitle}}</p>
            <span>{{item.preference}}</span>
            <p class="list-s">
               <span>¥{{item.price}}</span>
               <span>¥{{item.price_m}}</span>
               <span>{{item.specs}}</span>
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
   props:{url:{default:""}},
   data(){
      return{
         list:''
      }
   },
   created(){
      this.LoadList();
   },
   methods:{
      LoadList(){
         var url=this.url;
         this.axios.get(url).then(res=>{
            var list=res.data.data;
            this.list=list;
         })
      },
      retur(){
         history.go(-1);
      },
      shoppingCart(){
         this.$router.push('/');
      },
      Download(mid){
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
.list-s{
   position: relative;
}
.list-s>span:first-child{
   color:#fd3d3d;
   font-size: 14px;
   display: inline-block;
   width:37px;
}
.list-s>span:nth-child(2){
   color:#999;
   display: inline-block;
   width:32px;
   display: inline-block;
   margin-left: 10px;
   text-decoration: line-through;
   font-size: 12px;
}
.list-s>span:nth-child(3){
   color:#999;
   display: inline-block;
   width:80px;
   display: inline-block;
   margin-left: 10px;
   font-size: 12px;
}
.list-s>img{
   width:24px;
   height:24px;
   /* margin-left: 97px; */
   position: relative;
   top:5px;
   right: -35px;
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
   bottom:104px;
   right: 2px;
}
.img-2{
   border-radius:0 0 5px 5px;
   position: fixed;
   bottom:70px;
   right: 2px;
}
</style>