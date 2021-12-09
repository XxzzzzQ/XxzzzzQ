<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>管理系统-找回密码</title>
    <link rel="stylesheet" href="./css/layui.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/login.css">
    <script src="layui.js"></script>

</head>
<body>
<div class="frame-main">
    <div class="login-main">
        <header class="layui-elip">找回密码</header>
        <form class="layui-form">
            <div class="layui-input-inline">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"></label>
                <input type="text" name="account" required lay-verify="required" placeholder="请输入用户名" autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-input-inline">
                <label class="layadmin-user-login-icon layui-icon layui-icon-email"></label>
                <input type="password" name="password" required lay-verify="required" placeholder="请输入用于找回密码的邮箱" autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-input-inline login-btn">
                <button lay-submit lay-filter="login" class="layui-btn layui-btn-primary">找回</button>
            </div>
            <hr/>
            <p>
                <a href="login.jsp" class="fl">已有账号？在此登录&emsp;&emsp;&emsp;&emsp;</a>
                <a href="register.jsp" class="fr">未有账号？在此注册</a>
            </p>
        </form>
    </div>
</div>
<footer style="position:absolute;bottom:0;width:100%;height:30px; text-align: center;">© 2018-2019.YOYLING.COM</footer>



<script type="text/javascript">
    layui.use(['form','layer','jquery'], function () {

        // 操作对象
        var form = layui.form;
        var $ = layui.jquery;
        form.on('submit(login)',function (data) {
            // console.log(data.field);
            $.ajax({
                url:'login.php',
                data:data.field,
                dataType:'text',
                type:'post',
                success:function (data) {
                    if (data == '1'){
                        location.href = "../index.php";
                    }else{
                        layer.msg('登录名或密码错误');
                    }
                }
            })
            return false;
        })

    });
</script>
</body>
</html>