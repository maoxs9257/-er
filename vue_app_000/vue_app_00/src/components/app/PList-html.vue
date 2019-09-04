<template>
   <div>
      <mt-navbar v-model="active" fixed>
         <mt-tab-item id="plh-1">
            全部
         </mt-tab-item>
         <mt-tab-item id="plh-2">
            销量
         </mt-tab-item>
         <mt-tab-item id="plh-3">
            新品
         </mt-tab-item>
         <mt-tab-item id="plh-4">
            价格↓
         </mt-tab-item>
      </mt-navbar>
      <mt-tab-container v-model="active">
         <mt-tab-container-item id="plh-1">
            <list url="loadlist"></list>
         </mt-tab-container-item>
         <mt-tab-container-item id="plh-2">
            <list url="xiaoliang"></list>
         </mt-tab-container-item>
         <mt-tab-container-item id="plh-3">
            <list url='newshopp'></list>
         </mt-tab-container-item>
         <mt-tab-container-item id="plh-4">
            <list url="price"></list>
         </mt-tab-container-item>
      </mt-tab-container>
   </div>
</template>
<script>
import list from './List'
export default {
   data(){
      return{
         active:"plh-1",
      }
   },
   methods:{

   },
   components:{
      list
   }
}
</script>
<style scoped>
.mint-navbar .mint-tab-item.is-selected{
   color:#11B57C;
   border-bottom: 2px solid #11B57C;
}
</style>