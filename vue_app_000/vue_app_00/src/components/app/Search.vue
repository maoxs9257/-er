<template>
   <div class="search">
      <img src="../../assets/search.png" alt="">
      <input type="text" placeholder="请输入商品名称">
      <span>搜索</span>
   </div>
</template>
<script>
export default {
   data(){
      return{}
   }
}
</script>
<style scoped>
.search{
   background: #fff;
   width:100%;
   height: 30px;
   padding: 5px;
   border-bottom: 1px solid #cecdcd;
   position: fixed;
   z-index: 100px;
}
.search>img{
   width:20px;
   position: relative;
   top:5px;
   left: 28px;
}
.search>input{
   border: 0;
   outline:none;
   width: 65%;
   padding: 5px 10px 5px 30px;
   background: #e2e1e1;
   border-radius: 25px;
   font-size: 15px;
   color: black;
   font-family: "楷体";
}
.search>span{
   display: inline-block;
   padding-left: 17px;
   color: #11B57C;
   font-size: 18px;
   font-family: "楷体";
}
</style>