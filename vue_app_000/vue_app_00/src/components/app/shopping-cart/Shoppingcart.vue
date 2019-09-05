<template>
    <div class="father_top">
        <div class="nologin">
            <div class="fla-add">
                <div class="login">
                    登录可同步购物车内商品
                    <button>登录</button>
                </div>
                <div class="bg">
                    <span>全场满100元包邮,还差</span>
                    <span>100.00</span>
                    <span>元包邮</span>
                </div>
            </div>
            <div class="alert">
                <span>购物车空空的，快去逛逛吧！</span>
                <button>去逛逛</button>
            </div>
            <div>
                
            </div>
        </div>
    </div>
</template> 
<script>
export default {
    
}
</script>
<style scoped>
*{
    margin:0;
    padding:0px;   
    box-sizing: border-box;
}
.fla-add{
    width:100%;
    height:90px; 
}

.login{
    text-align: center;
    color:#808080;
    font-size: 12px;
    width:100%;
    height:39px;
    line-height: 39px;
}
.login::after{
    content:'';
    display: block;
    clear: both;
} 
.login>button{
    display: inline-block;
    width:50px;
    height:20px;
    color:#808080;
    font-size: 12px;
    background: #fff;
    border:1px solid #a8a7a7;
    border-radius: 3px ;
    margin-left: 15px;
    outline: none;
}
.bg{
    position: fixed;
    padding-left: 10px;
    font-size: 12px;
    width:100%;
    height:39px;
    line-height: 39px;
    background: #f8efd8;
    color:#d3b162;
    border-top:1px solid  #d3b162;
    border-bottom:1px solid  #d3b162;
}
.bg::after{
    content:'';
    display: block;
    clear: both;
}
.bg>span:nth-child(2){
    color:#fb3d3d;
}
</style>