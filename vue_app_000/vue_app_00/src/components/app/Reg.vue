<template>
    <div class="reg">
        <div class="reg_img" @click="retu">
            <img  src="../../assets/ret.png" />
        </div>
        <div class="reg_center">
            <span class="reg_zc">叮当注册</span>
        </div>
        <div>
            <mt-field v-model="uname" class="reg_user" placeholder="3-6位有效用户名"><img src="../../assets/user_n.png"></mt-field>
            <mt-field v-model="upwd" class="reg_pwd" type="password" placeholder="6-12位有效密码"><img src="../../assets/password.png"></mt-field>
        </div>
        <div class="dingdong">
            <input type="checkbox">
            <span>
                我已同意
                <span class="xy_dingdong" @click="xy">《叮咚买菜服务协议》</span>
            </span>
        </div>
        <div class="reg_reg">
            <mt-button class="reg_log" @click.native="reg">注册</mt-button>
        </div>
        <div class="have_user" @click="retu">
            <span>已有账号？点我登录！</span>
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
        retu(){
            history.go(-1);//返回上一级
        },
        xy(){
            this.$router.push("/Xy");
        },
        reg(){
            var u=this.uname;
            var p=this.upwd;
            // console.log(p,u);
            var reg1=/^[a-z0-9]{3,6}$/;
            var reg2=/^[a-z0-9]{6,12}$/;
            if(!reg1.test(u)){
                this.$toast("用户名格式不正确！");
                return;
            }
            if(!reg2.test(p)){
                this.$toast("密码格式不正确！");
                return;
            }
            // 发送ajax请求
            var url="reg";
            var obj={uname:u,upwd:p};
            // console.log(obj);
            this.axios.get(url,{params:obj}).then(res=>{
                if(res.data.code==-1){
                    this.$toast("用户名或密码有误");
                }else if(res.data.code==-2){
                    this.$toast("用户名已存在");
                }else{
                    // 注册成功，跳转
                    this.$toast("注册成功");
                    this.$router.push("/Login");
                }
            });
        }
    }
}
</script>
<style scoped>
    .reg{
        width:100%;
        height:100%;
    }
    .reg_img{
        margin:7px 0 10px 11px;
    }
    .reg_center{
        text-align: center;
    }
    .reg_zc{
        display: inline-block;
        font-size: 25px;
        font-weight: 700;
        padding:5px;
        margin-bottom: 10px;
    }
    /* .reg_user,.reg_pwd{
        border:0;
        margin-top: 20px;
    }  */
    .dingdong{
        color: gray;
        font-size: 16px;
        display: inline-block;
        padding: 5px;
        margin: 10px 0 20px 10px;
    }
    .reg_reg{
        text-align: center;
    }
    .reg_log{
        background:#ccc;
        width:98%;
        height:43px;
        border-top-left-radius: 25px;
        border-top-right-radius: 25px;
        border-bottom-left-radius: 25px;
        border-bottom-right-radius: 25px;
        margin-top:20px; 
    }
    .xy_dingdong{
        color:rgb(4, 224, 4);
    }
    .have_user{
        text-align: center;
        padding: 10px;
        margin-top:10px;
        color:gray;
    }
</style>
