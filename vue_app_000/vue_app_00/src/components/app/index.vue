<template>
    <div>
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="tab-first">
                首页
            </mt-tab-container-item>
            <mt-tab-container-item id="tab-fenlei">
                分类
            </mt-tab-container-item>
            <mt-tab-container-item id="tab-eat">
                吃什么
            </mt-tab-container-item>
            <mt-tab-container-item id="shopping-cart">
                购物车
            </mt-tab-container-item>
            <mt-tab-container-item id="tab-self">
                我的
            </mt-tab-container-item>
        </mt-tab-container>
        <mt-tabbar v-model="active" fixed>
            <mt-tab-item id="tab-first">
                首页
            </mt-tab-item>
            <mt-tab-item id="tab-fenlei">
                分类
            </mt-tab-item>
            <mt-tab-item id="tab-eat">
                吃什么
            </mt-tab-item>
            <mt-tab-item id="shopping-cart">
                购物车
            </mt-tab-item>
            <mt-tab-item id="tab-self">
                我的
            </mt-tab-item>
            
        </mt-tabbar>
    </div>
</template>
<script>
export default {
    data(){
        return{
            active:"tab-first"
        }
    }
}
</script>
<style scoped>

</style>