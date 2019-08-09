<template>
    <div class="father">
        <div class="header_top">
            <div class="msage_1"><img src="../../assets/msage.png" alt=""></div>
            <div class="login_user">
                <div class="header">
                <span>
                    <img src="../../assets/user_p.png" alt="">
                </span>
                <span @click="dl_user">立即登录</span>
                <span>
                    <img src="../../assets/jifen.png" alt="">
                    <span>签到领积分</span>
                </span>
                </div>
                <div class="vip_user">
                    <span>绿卡</span>
                    <span>花0.25/天，预计省806元/年</span>
                    <span>立即开通></span>
                </div>
            </div>
        </div>
        <div class="youhui">
            <span>优惠券<span>0</span>张</span>
            <span>积分<span>0</span>分</span>
        </div>
        <div class="shopping_dd">
            <div class="all_dd">
                <span>我的订单</span>
                <span>查看全部订单></span>
            </div>
            <dir class="te_img">
                <div>
                    <img src="../../assets/zf.png">
                    <p>待支付</p>
                </div>
                <div>
                    <img src="../../assets/dsh.png">
                    <p>待收货</p>
                </div>
                <div>
                    <img src="../../assets/pj.png">
                    <p>待评价</p>
                </div>
                <div>
                    <img src="../../assets/shp.png">
                    <p>售后/退款</p>
                </div>
            </dir>
        </div>
        <div class="img_center">
            <img src="../../assets/youhui.png" alt="">
        </div>
        <div class="use_cy">
            <p>常用功能</p>
            <div class="cy_gn">
                <div>
                    <img src="../../assets/vip.png" alt="">
                    <p>我的绿卡</p>
                </div>
                <div>
                    <img src="../../assets/dizhi.png" alt="">
                    <p>收货地址</p>
                </div>
                <div>
                    <img src="../../assets/yaoqing.png" alt="">
                    <p>邀请有礼</p>
                </div>
                <div>
                    <img src="../../assets/lianxi.png" alt="">
                    <p>联系客服</p>
                </div>
                <div>
                    <img src="../../assets/lipin.png" alt="">
                    <p>礼品卡</p>
                </div>
                <div>
                    <img src="../../assets/saoyisao.png" alt="">
                    <p>扫一扫</p>
                </div>
                <div>
                    <img src="../../assets/fankui.png" alt="">
                    <p>意见反馈</p>
                </div>
                <div>
                    <img src="../../assets/shezhi.png" alt="">
                    <p>设置</p>
                </div>
                <div>
                    <img src="../../assets/qiye.png" alt="">
                    <p>企业采购</p>
                </div>
            </div>
        </div>
        <hr>
        <span class="c_like">· 猜你喜欢 ·</span>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    },
    methods:{
        dl_user(){
            this.$router.push("/Login");
        }
    }
}
</script>
<style scoped>
    *{
        margin:0;
        padding:0;
    }
    .father{
        width:100%;
        align-items:center;
        background-color:#ece6e6;
    }
    .header_top{
        width:100%;
        height:180px;
        background:#3fc260;
        border-bottom-right-radius: 10%;
        border-bottom-left-radius: 10%;
        overflow: hidden;
    }
    .msage_1{
        text-align: right;
        padding:13px;
    }
    .header{
        width:94%;
        margin:0 auto;
        display:flex;
        justify-content: space-around;
        align-items: center;
        margin-bottom: 15px;
    }
    .header>span:first-child{
        display:inline-block;
        width:45px;
        height:45px;
        border:1px solid #aaa;
        text-align: center;
        border-radius:50%;
        background:#ddd;
        margin:5px 1px;
    }
    .header>span:first-child>img{
        display:inline-block;
        margin-top: 7px;
    }
    .header>span:nth-child(2){
        font-family:"宋体";
        color:#fff;
        font-weight:700;
    }
    .header>span:nth-child(3){
        display: inline-block;
        text-align: center;
        margin-left: 120px;
        width:115px;
        height:45px;
        background:rgba(90, 89, 89, 0.5);
        border-top-left-radius: 25px;
        border-top-right-radius: 25px;
        border-bottom-left-radius: 25px;
        border-bottom-right-radius: 25px;
    }
    .header>span:nth-child(3)>img,.login_user>span:nth-child(3)>span{
        display: inline-block;
        margin-top: 12px;
    }
    .vip_user{
        width:94%;
        height:44px;
        padding-top:20px;
        margin:0 auto;
        text-align: center;
        background-image: linear-gradient(to right,#455567 0%,#2d384c 100%);
        border-top-right-radius: 15px;
        border-top-left-radius: 15px;
        color:#fff;
        font-size: 13px;
        font-family: "宋体";
    }
    .vip_user>span:first-child{
        font-size: 16px;
        font-weight: 700;
        color: #3abd63;
        margin-right: 5px;
    }
    .vip_user>span:nth-child(3){
        display: inline-block;
        margin-left: 35px;
        width:75px;
        height:32px;
        border-top-left-radius: 25px;
        border-top-right-radius: 25px;
        border-bottom-left-radius: 25px;
        border-bottom-right-radius: 25px;
        background: #3fc260;
        line-height: 32px;
        color:#2d384c;
        font-weight: 700;
    }
    .youhui{
        width:94%;
        height: 100%;
        background: #fff;
        margin:20px auto;
        border-radius: 8px;
    }
    .youhui>span{
        display:inline-block;
        width:49%;
        height:35px;
        line-height: 35px;
        text-align: center;
        margin:10px 0;
    }
    .youhui>span:first-child{
        border-right: 1px solid #ddd;
        margin-left: 4px;
    }
    .shopping_dd{
        margin:0 auto;
        margin-bottom: 20px;
        width:94%;
        background:#fff;
        border-radius: 8px;
    }
    .all_dd{
        display: flex;
        justify-content: space-between;
    }
    .all_dd>span:first-child{
        font-size: 20px;
        font-family:"宋体";
        font-weight: 700;
        padding:20px;
    }
    .all_dd>span:last-child{
        font-size: 15px;
        padding:20px;
        color:#aaa;
    }
    .te_img{
        display: flex;
        justify-content: space-between;
        padding:5px 20px;
        text-align: center;
    }
    .te_img>div>p{
        margin-top: 10px;
        font-family: "宋体";
        font-size: 14px;
        color:#aaa;
    }
    .img_center{
        width:94%;
        margin:0 auto;
        background:#fff;
        border-radius: 8px;
        text-align: center;
        padding:15px 0;
    }
    .img_center>img{
        width:94%;
    }
    .use_cy{
        width:94%;
        margin:20px auto;
        background:#fff;
        border-radius: 8px;
        text-align: center;
        padding:15px 0;
    }
    .use_cy>p{
        text-align: left;
        margin-left: 20px;
        font-size: 20px;
        font-weight: 700;
        font-family: "宋体"
    }
    .cy_gn{
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
    }
    .cy_gn>div{
        width:20%;
        margin:20px 12px;
        color:#aaa;
        font-size: 14px;
        font-family:"宋体";
    }
    .c_like{
        display:inline-block;
        position: relative;
        top:-12px;
        left: 137px;
        color: #aaa;
        font-size: 14px;
        font-family: "宋体";
        background:#ece6e6;
    }
</style>
