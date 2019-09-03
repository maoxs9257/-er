<template>
    <div class="color">
        <mt-swipe :auto="10000">
            <mt-swipe-item v-for="(item,i) of carousel" :key="i">
                <img class="img-bin" :src="`http://127.0.0.1:3001/`+item"/>
            </mt-swipe-item>
        </mt-swipe>
        <div class="retu-w" @click="retuT">
           <img src="../../assets/goback.png" alt="">
        </div>
        <p class="title">{{list.title}}</p>
        <p class="p-title">
           <span>{{list.preference}}</span>
           <span>{{list.mtitle}}</span>
        </p>
        <div class="price">
           <span>￥{{list.price}}</span>
           <span>￥{{list.price_m}}</span>
           <span>产地：{{list.madein}}</span>
        </div>
        <div class="preference">
           <p>
              <span>促销</span>
              <span>优惠</span>
              <span>{{list.preference}}</span>
           </p>
           <p>
               <span>全网</span>
               <span>满178赠谷鸭</span>
               <span>满178得赠品</span>
               <span>></span>
           </p>
           <span><img src="../../assets/r.png" alt=""></span>
           <span>不支持7天无理由退货</span>
        </div>
        <div class="content">
            <div>
                <span>规格</span>
                <span>{{list.specs}}</span>
            </div>
            <div>
                <span>数量</span>
                <button @click="btn1">-</button>
                <span >{{n}}</span>
                <button @click="btn2">+</button>
            </div>
        </div>
         <div class="map">
             <p>
                 <span>送至</span>
                 <span><img src="../../assets/map.png" alt=""></span>
                 <span>上海</span>
                 <span>黄浦区</span>
                 <span>黄浦区</span>
             </p>
             <p>
                 <span>有货</span>
                 <span>20:00 前完成订单，预计明日({{month}}{{date}})送达</span>
             </p>
         </div>
         <div class="pinglun">
             <div>
                 <p>
                     <span>评价(78)</span>
                     <span>查看全部</span>
                 </p>
             </div>
             <div>
                 <p>
                     <img src="../../assets/no-pic.jpg" alt="">
                     <span>
                         <p>18***89</p>
                         <p>超时未评价，系统默认好评</p>
                     </span>
                     <span>2019-08-29</span>
                 </p>
             </div>
         </div>
         <div class="pro-i" @click="detilePro(list.details)">
             <span>查看图文详情</span>
         </div>
         <div class="footer">
             <span>
                 <img src="../../assets/hand.png" alt="">
                 <p>首页</p>
             </span>
             <span>
                 <img src="../../assets/cart2.png" alt="">
                 <p>购物车</p>
             </span>
             <span>加入购物车</span>
         </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:'',
            carousel:'',
            month:'',
            date:'',
            n:'1'
        }
    },
    created(){
      this.Load();
      this.GetTime();
    },
    methods: {
        Load(){
            var mid=this.$route.query.mid;
            // console.log(this.$route.query.mid);
            var url="productlist";
            var obj={mid:mid};
            this.axios.get(url,{params:obj}).then(res=>{
                var pro=res.data.data;
                this.list=pro[0];
                // console.log(this.list.details);
                // 取出结果，并且结果按照 , 分割成功数组
                this.carousel=pro[0].carousel.split(","); 
                // console.log(this.carousel);
            })
            
        },
        GetTime(){
            var da=new Date();
            var month=da.getMonth()+1+'月';
            var date=da.getDate()+1+'日';
            this.month=month;
            this.date=date;
        },
        btn1(){
            if(this.n>1)
            this.n=this.n-1;
        },
        btn2(){
            this.n=parseInt(this.n)+1;
        },
        retuT(){
            history.go(-1);
        },
        detilePro(details){
            this.$router.push(
                {
                path:'/Details',
                query:{details:details}
                }
            );
        }
    },
}
</script>
<style scoped>
*{
    margin:0;
    padding:0;
    font-family: "楷体";
    color: rgb(41, 40, 40);
}
.color{
    background: #f4f4f4;
}
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
    height: 367.39px;
}
.mint-swipe-items-wrap .mint-swipe-item{
    background-repeat:no-repeat;
    background-size:100% 140px;  
}
.img-bin{
    width:100%;
}
.retu-w{
   width:33.81px;
   height:33.81px;
   position: fixed;
   top:10px;
   left: 15px;

}
.retu-w>img{
   width:100%;
}
.title{
    display: block;
    padding:5px 10px;
    font-size: 18px;
    font-weight: 700;
    color: #666;
    background: #fff;
}
.p-title,.price,.preference,.content,.map,.pinglun,.pro-i,.footer{
    margin:0 auto;
    padding:10px;
    background: #fff;
}
.p-title>span:first-child{
    width:97px;
    height:20px;
    line-height: 20px;
    font-size: 13px;
    display: inline-block;
    border:1px solid #01B27A;
    border-radius: 25px;
    color: #01B27A;
    text-align: center;
    position: relative;
    top:-6px;
}
.p-title>span:last-child{
    overflow: hidden;
    height:20px;
    line-height: 20px;
    font-size: 15px;
    display: inline-block;
    padding-left: 20px;
    width:231px;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.price{
    padding:12px;
    border-bottom: 1px solid rgb(231, 228, 228);
}
.price>span:first-child{
    color: #EB3939;
    font-size: 20px;
}
.price>span:nth-child(2){
    display: inline-block;
    padding-left: 10px;
    color: #ccc;
    text-decoration: line-through;
    font-size: 17px;
}
.price>span:last-child{
    display: inline-block;
    padding-left: 27%;
    font-size: 15px;
    color:#999;
}
.preference{
    margin-bottom: 10px;
    border-bottom:1px solid rgb(231, 228, 228);
}
.preference>p{
    font-size: 16px;
}
.preference>p{
    padding:5px;
}
.preference>p:first-child>span:first-child{
    color:#999;
}
.preference>p:first-child>span:nth-child(2){
    display: inline-block;
    color:#01B27A;
    border:1px solid #01B27A;
    border-radius: 25px;
    margin-left: 20px;
    padding:2px 5px;
    font-size: 14px;
    width:35px;
    line-height: 14px;
    text-align: center;
}
.preference>p:first-child>span:last-child{
    font-weight: 700;
    color: #666;
    display: inline-block;
    margin-left: 10px;
}
.preference>p:nth-child(2){
    padding-bottom: 15px;
    margin-bottom: 5px;
    border-bottom:1px solid rgb(231, 228, 228);
}
.preference>p:nth-child(2)>span:first-child{
    display: inline-block;
    color:#01B27A;
    border:1px solid #01B27A;
    border-radius: 25px;
    margin-left: 52px;
    padding:2px 5px;
    font-size: 14px;
    width:35px;
    line-height: 14px;
    text-align: center;
}
.preference>p:nth-child(2)>span:nth-child(2){
    font-weight: 700;
    color: #666;
    display: inline-block;
    margin-left: 10px;
}
.preference>p:nth-child(2)>span:nth-child(3){
    font-weight: 700;
    color: #666;
    display: inline-block;
}
.preference>p:nth-child(2)>span:last-child{
    font-weight: 700;
    color: #666;
    display: inline-block;
    margin-left: 36px;
}
.preference>span:nth-child(3){
    display: inline-block;
    width:12px;
    height:12px;
    margin-left: 5px;
    padding:10px 0;
}
.preference>span:nth-child(3)>img{
    width:100%;
}
.preference>span:last-child{
    color:#999;
}
.content{
    margin-bottom: 10px;
}
.content>div:first-child{
    padding:5px;
}
.content>div:first-child>span:first-child,.content>div:last-child>span:first-child{
    font-size: 16px;
    color: #999;
}
.content>div:first-child>span:last-child{
    display: inline-block;
    color:#01B27A;
    border:1px solid #01B27A;
    border-radius: 25px;
    margin-left: 20px;
    padding:10px 10px;
    font-size: 16px;
    /* width:50px; */
    line-height: 14px;
    text-align: center;
}
.content>div:last-child{
    padding:5px;
    margin:10px 0;
}
.content>div:last-child>button{
    width:23px;
    height:28px;
    border:1px solid rgb(196, 193, 193);
    background:#fff;
    outline: none;
}
.content>div:last-child>button:nth-child(2){
    margin-left: 20px;
}
.content>div:last-child>span:nth-child(3){
    display: inline-block;
    width:31px;
    height: 28px;
    text-align: center;
    line-height: 28px;
}
.map{
    margin-bottom: 10px;
}
.map>p:first-child{
    padding:5px;
    color: #666;
    font-weight: 700;
}
.map>p:first-child>span:first-child{
    font-size: 16px;
    color: #999;
    font-weight: 400;
}
.map>p:first-child>span:nth-child(2){
    display: inline-block;
    margin-left: 5px;
}
.map>p:last-child{
    padding:5px;
    margin-left: 38px;
    font-size: 14px;

}
.map>p:last-child>span:first-child{
    color: #01B27A;
}
.pinglun{
    margin-bottom: 10px;
}
.pinglun>div:first-child>p>span:first-child{
    display: inline-block;
    padding:5px;
    color: #999;
    font-size: 16px;
}
.pinglun>div:first-child>p>span:last-child{
    display: inline-block;
    margin-left: 207px;
}
.pinglun>div:last-child{
    padding:10px 0;
}
.pinglun>div:last-child>p>img{
    width:32.3px;
}
.pinglun>div:last-child>p>span:nth-child(2){
    display: inline-block;
    width:200px;
    margin-left: 5px;
}
.pinglun>div:last-child>p>span:nth-child(2)>p{
    padding:5px 0;
    font-size: 14px;
}
.pinglun>div:last-child>p>span:last-child{
    font-size: 15px;
    position: relative;
    top:-25px;
    right: -35px;
}
.pro-i{
    padding:21px 0 85px;
}
.pro-i>span{
    display:block;
    border: 1px solid #aaa;
    width:134px;
    height:34px;
    margin:0 auto;
    text-align: center;
    line-height: 34px;
    font-size: 15px;
    color: #999;font-weight: 700;
}
.footer{
    position:fixed;
    bottom:-9px;
    padding-left: 20px;
    border-top: 1px solid rgb(231, 228, 228);
}
.footer>span:first-child,.footer>span:nth-child(2){
    display: inline-block;
    width:56px;
    height:58px;
    text-align: center;
    position: relative;
    bottom: -11px;
}
.footer>span:first-child>img{
    width:21px;
}
.footer>span:nth-child(2)>img{
    width:23px;
}
.footer>span:last-child{
    display: inline-block;
    height:48px;
    width:231px;
    font-size: 20px;
    background: #FB3D3D;
    color: #fff;
    text-align: center;
    line-height: 48px;
}
</style>