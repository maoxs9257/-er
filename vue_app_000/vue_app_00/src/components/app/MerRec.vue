<template>
   <div>
      <div class="merrec">
         <div class="merrec-pro" v-for="(item,i) of list" :key="i">
            <span class="merrec-img">
               <img :src="`http://127.0.0.1:3001/`+item.mimg_url" alt="">
            </span>
            <span>{{item.preference}}</span>
            <span>{{item.title}}</span>
            <span class="merrec-price">
               <span>￥{{item.price}}</span>
               <img src="../../assets/cart.png" alt="">
            </span>
         </div>
      </div>
   </div>
</template>
<script>
export default {
   data(){
      return{
         list:[],
         did:1
      }
   },
   created(){
      this.loadmore();
   },
   methods:{
      loadmore(){
         var url="merrec";
         var obj={did:this.did};
         this.axios.get(url,{params:obj}).then(res=>{
            var rows=this.list.concat(res.data.data);
            this.list=rows;
            // console.log(this.list);
         })
      }
   }
}
</script>
<style scoped>
*{
   margin: 0;
   padding: 0;
}
.merrec{
   width:94%;
   height:208px;
   margin:0 auto;
   display: flex;
   justify-content:space-between;
   flex-wrap: nowrap;
   overflow-x: scroll;
   overflow-y: hidden;
}
.merrec>.merrec-pro{
   display: flex;
   flex-direction: column;
}
.merrec-img>img{
   width:124px;
}
.merrec>.merrec-pro>span:nth-child(2){
   display: inline-block;
   width:73px;
   height: 20px;
   position: relative;
   top:-23px;
   padding:0 3px ;
   text-align: center;
   font-size:10px;
   font-family: "楷体";
   color:#fff;
   line-height: 20px;
   background: #fb3d3d;
   border-radius: 23px 25px 25px 0;
}
.merrec>.merrec-pro>span:nth-child(3){
   display: inline-block;
   width:110px;
   height: 16px;
   line-height: 16px;
   padding:5px 5px;
   font-size: 15px;
   font-family: "楷体";
   font-weight: 700;
   overflow: hidden;
   text-overflow: ellipsis;
   white-space: nowrap;
   position: relative;
   top:-20px;
}
.merrec-price{
   display: flex;
   padding: 5px 15px 5px 4px;
   justify-content: space-between;
   align-items: center;
   position: relative;
   top:-27px;
   font-size: 15px;
   font-family: "楷体";
   color:red;
}
.merrec-price>img{
   width:25px;
}
</style>