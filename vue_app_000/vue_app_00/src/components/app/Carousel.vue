<template>
    <div>
        <mt-swipe :auto="4000" @change="handleChange">
            <mt-swipe-item v-for="(item,i) of carousel" :key="i">
                <img class="img-bin" :src="item.aimg_url"/>
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
export default {
    data(){
        return{
            carousel:""
        }
    },
    created(){
       this.seeCarousel(); 
    },
    methods: {
        handleChange(){
        },
        seeCarousel(){
            var url="carousel";
            this.axios.get(url).then(res=>{
                this.carousel=res.data.data;
                // console.log(this.carousel);
                // console.log(res);
            });
        }
    },
}
</script>
<style scoped>
.mint-swipe .mint-swipe-indicator{
    width: 8px;
    height: 8px;
    display: inline-block;
    border-radius: 100%;
    background: #000 !important;
    opacity: 0 !important;
    margin: 0 3px;
}
.mint-swipe-indicator.is-active {
    background: #ffff00;
}
.mint-swipe {
    position: relative;
    height: 217.39px;
    margin-top:43px;
}
.mint-swipe-items-wrap .mint-swipe-item{
    background-repeat:no-repeat;
    background-size:100% 140px;  
}
.img-bin{
    width:100%;
}
</style>