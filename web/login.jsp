<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>管理系统-登录页面</title>

    <link rel="stylesheet" href="./css/layui.css">
    <link rel="stylesheet" href="./css/modules/layer/default/layer.css">
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/style.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">

    </style>
</head>
<body>
<div class="frame-main">
    <div class="login-main">
        <header class="layui-elip">学生信息管理系统</header>
        <form class="layui-form" action="" name="formf" method="post">

            <div class="layui-input-inline">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"></label>
                <input type="text" name="id" id="id" value="${loginid}" required lay-verify="required" placeholder="用户名" autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-input-inline">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"></label>
                <input type="password" value="${loginpassword}" id="password" name="password" required lay-verify="required" placeholder="密码" autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-input-inline" style="width: 56%; margin-bottom: 0px;">
                <label class="layadmin-user-login-icon layui-icon layui-icon-vercode"></label>
                <input type="password" name="verifycode" id="code" required lay-verify="required" placeholder="验证码（不区分大小写）" autocomplete="off"
                       class="layui-input">
            </div>
            <a href="javascript:refreshCode()">
                <img style="padding-left: 14px;" src="${pageContext.request.contextPath}/checkCodeServlet" title="点击刷新验证码" id="vcode" draggable="false">
            </a>

            <div class="layui-form-item">
                <label class="layui-form-label" style=" padding-left: 0px;padding-bottom: 6px;">请选择身份</label>
                <div class="layui-input-block">
                    <select id="roles" lay-verify="required">
                        <option value="student" selected="selected">学生</option>
                        <option value="teacher">老师</option>
                        <option value="admin">管理员</option>
                    </select>
                </div>
            </div>

            <div class="layui-input-inline login-btn">
                <button type="button" onclick="a()" lay-submit lay-filter="login" class="layui-btn layui-btn-primary" id="login" name="submit-login" style="left: 10px">立即登录</button>
            </div>
            <hr/>

            <p><a href="register.jsp" class="fl">没有账号？立即注册</a>
            <div class="tooltip"></div>
            <a href="forget.jsp" class="fr">忘记密码？</a></p>
        </form>
    </div>
</div>

<footer style="position:absolute;bottom:0;width:100%;height:30px; text-align: center;">为了您可以获得更好的体验，请使用谷歌浏览器</footer>
<script src="layui.js"></script>
<script src="./lay/modules/layer.js"></script>

<script type="text/javascript">
    function refreshCode() {
        var vcode = document.getElementById("vcode");
        vcode.src = "${pageContext.request.contextPath}/checkCodeServlet?time="+new Date().getTime();
    }
</script>
<script type="text/javascript">
    layui.use('form',function(){
        var form = layui.form;
        //刷新界面 所有元素
        form.render();
    });
</script>

<script type="text/javascript">
    // $("#login").on("click", function(){
    function a() {
        var roles = document.getElementById("roles");
        var checked_value =roles.value;
        var id = document.getElementById("id").value;
        var password = document.getElementById("password").value;
        var verifycode = document.getElementById("code").value;
        if (id=='' || password=='' || verifycode=='') {
            return;
        }else {
            if (checked_value=="student") {
                document.formf.action="${pageContext.request.contextPath}/loginServlet?roles=student";
                document.formf.submit();
            }else if (checked_value=="teacher") {
                document.formf.action="${pageContext.request.contextPath}/loginServlet?roles=teacher";
                document.formf.submit();
            }else {
                document.formf.action="${pageContext.request.contextPath}/loginServlet?roles=admin";
                document.formf.submit();
            }
        }
    }
</script>
</body>
</html>