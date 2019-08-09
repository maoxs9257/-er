<template>
    <div class="login">
        <div class="login_img">
        <img  src="../../assets/ret.png" />
        </div>
        <div class="login_center">
            <span class="login_dl">
                叮咚登录
            </span>
            <div>
                <mt-field class="login_user" placeholder="请输入用户名" type="text" v-model="uname"></mt-field>
            </div>
            <div>
                <mt-field class="login_pwd" placeholder="请输入密码" type="password" v-model="upwd"></mt-field>
            </div>
            <mt-button class="dl_log" @click.native="login">登录</mt-button>
            <div class="forget_pd">
                <span>忘记密码？</span>
            </div>
            <p @click="reg_user">
                <span class="reg_user">还没有账号？点我注册！</span>
            </p>
            <hr class="hr_color">
            <p>
                <span class="th_lg">第三方账号登录</span>
            </p>
            <p>
                <img src="../../assets/weixin.png"/>
            </p>
            <p>
                <span class="wei_xin">微信登录</span>
            </p>
            <p>
                <span class="dingdong">
                    登录注册即表示您同意
                    <span class="xy_dingdong" @click="xy">《叮咚买菜服务协议》</span>
                </span>
            </p>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:"",
            upwd:""
        }
    },
    methods:{
        reg_user(){
            this.$router.push("/Reg");
        },
        xy(){
            this.$router.push("/Xy");
        },
        login(){
            var u=this.uname;
            var p=this.upwd;
            var reg1=/^[a-z0-9]{3,6}$/i;
            var reg2=/^[a-z0-9]{6,12}$/i;
            if(!reg1.test(u)){
                this.$toast("用户名格式不正确");
                return;
            }
            if(!reg2.test(p)){
                this.$toast("密码不正确");
                return;
            }
            // 发送ajax请求
            var url="login";
            var obj={uname:u,upwd:p};
            this.axios.get(url,{params:obj}).then(res=>{
                if(res.data.code==-1){
                    this.$toast("用户名或密码有误");
                }else{
                    // 登录成功，跳转
                    this.$router.push("/Reg");
                }
            })
        }

    }
}
</script>
<style scoped>
    .login{
        width:100%;
        height:100%;
    }
    .login_img{
        margin:7px 0 10px 11px;
    }
    .login_center{
        text-align: center;
    }
    .login_dl{
        display: inline-block;
        font-size: 25px;
        font-weight: 700;
        padding:5px;
        margin-bottom: 10px;
    }
    .login_user,.login_pwd{
        border-bottom:0;
        margin-top:20px;
    }
    .dl_log{
        background:#ccc;
        width:98%;
        height:53px;
        border-top-left-radius: 25px;
        border-top-right-radius: 25px;
        border-bottom-left-radius: 25px;
        border-bottom-right-radius: 25px;
        margin-top:20px;
    }
    .forget_pd{
        color:rgb(4, 224, 4);
        font-size: 13px;
        text-align: right;
        padding: 5px;
        margin:10px 10px 10px 0;
    }
    .reg_user{
        color:grey;
        display: inline-block;
        padding: 5px;
    }
    .hr_color{
        border-bottom: 1px solid rgb(246,246,246);
        display: inline-block;
        width:90%;
        margin-top: 50px;
    }
    .th_lg{
        display: inline-block;
        background: #fff;
        position: relative;
        top:-38px;
        padding: 0 10px;
        color:grey;
    }
    .wei_xin{
        color:grey;
    }
    .dingdong{
        font-size: 13px;
        color:grey;
        position: relative;
        top:15px;
    }
    .xy_dingdong{
        color:rgb(4, 224, 4);
    }
</style>
