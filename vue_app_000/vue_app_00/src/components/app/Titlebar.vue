<template>
   <div>
      <div class="header-top">
         <span>上海<img src="../../assets/jiantou.png" alt=""></span>
         <span class="i-img"><img src="../../assets/search.png" alt=""></span>
         <input type="text" placeholder="搜索：">
      </div>
      <!-- <mt-picker :slots="slots" @change="onValuesChange"></mt-picker> -->
   </div>
</template>
<script>
export default {
   data(){
      return{
         count:0,
      //     slots: [
      //   {
      //     flex: 1,
      //     values: ['上海'],
      //     className: 'slot1',
      //     textAlign: 'right'
      //   }, {
      //     divider: true,
      //     content: '-',
      //     className: 'slot2'
      //   }, {
      //     flex: 1,
      //     values: ['黄埔', '嘉定', '闵行', '宝山', '静安', '普陀'],
      //     className: 'slot3',
      //     textAlign: 'left'
      //   }
      // ]
      }
   },
   methods: {
   //  onValuesChange(picker, values) {
   //    if (values[0] > values[1]) {
   //      picker.setSlotValue(1, values[0]);
   //    }
   //  }
  }
}
</script>
<style scoped>
.header-top{
   background: linear-gradient(90deg,#39da85,#01b27a);
   width:100%;
   padding:5px 10px;
   align-items: center;
   position: fixed;
   top:0;
   left: 0;
   z-index: 100;
}
.i-img{
   position: fixed;
   top:11px;
   left:80px;
}
.i-img>img{
   width:23px;
   height:23px;
}
input{
   width:60%;
   padding:8px 30px 8px;
   border:none;
   border-radius: 25px;
   margin-left:16px;
   outline: 0;
}
</style>