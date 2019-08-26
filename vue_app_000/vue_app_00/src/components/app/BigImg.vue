<template>
   <div class="bigimg">
      <img src="../../assets/bigimg/bi-1.jpg" alt="">
   </div>
</template>
<script>
export default {
   props:{bid:{default:""}},
   data(){
      return{}
   },
   
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