<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="./css/layui.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="icon" href="./images/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">
    <script src="layui.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header layui-bg-green">
        <div class="layui-logo" style="color: white">学生信息管理系统</div>
        <!-- 头部区域 -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a class = "layui-icon layui-icon-home" id="fresh" href="index.jsp" style="color: white"> 主页</a></li>
            <li class="layui-nav-item">
                <a class="layui-icon layui-icon-link" href="javascript:;" style="color: white"> 其它</a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/notifyListToServlet">学校公告</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;" style="color: white">
                    ${student.s_name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/studentInfomationServlet">个人信息</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/logoutServlet">退出</a></dd>
                </dl>
            </li>

        </ul>
    </div>
</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;
        element.init();
    });
</script>
<script type="text/javascript">
    function alertabout() {
        alert("学生信息管理系统\n陈双全1812123206");
    }
</script>
</body>
</html>
