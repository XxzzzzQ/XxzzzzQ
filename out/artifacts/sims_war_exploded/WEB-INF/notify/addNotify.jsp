<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>公告发布</title>
    <link rel="stylesheet" href="./css/layui.css">
    <link rel="stylesheet" href="./css/style.css">
    <script src="./layui.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">
        .input-block {
            margin-left: 0px;
            min-height: 36px;
        }
        #addnotifybutton {
            text-align: center;
        }
        .layui-btn {
            width: 30%;
        }
    </style>
</head>
<body class="layui-layout-body" style="background-color: #F2F2F2">
<jsp:include page="/filterLogin.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/aHeader.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/adleftNav.jsp"></jsp:include>
<div class="layui-layout layui-layout-admin">
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <span class="layui-breadcrumb">
                <a href="index.jsp">主页</a>
                <a>系统管理</a>
                <a><cite>公告发布</cite></a>
            </span>
            <p> &nbsp;</p>
            <form action="${pageContext.request.contextPath}/addNotifyServlet" method="post">
                <div class="input-block">
                    <textarea name="notifyInfo" placeholder="请输入内容" class="layui-textarea" required lay-verify="required"></textarea>
                    <p>
                </div>
                <%--    <input type="text" name="notifyInfo" />--%>
                <div id="addnotifybutton">
                    <button type="submit" class="layui-btn">发布</button>
                </div>
            </form>

            <table class="layui-table" lay-filter="test">
                <thead>
                <tr>
                    <th>序号</th>
                    <th>公告日期</th>
                    <th>公告内容</th>
                    <th>操作</th>
                </tr>
                </thead>

                <c:forEach items="${notifys}" var="notify">
                    <tr>
                        <td>${notify.id}</td>
                        <td>${notify.notifyDate}</td>
                        <td>${notify.notifyInfo}</td>
                        <td><button class="layui-btn layui-btn-primary layui-border-green">修改</button><button class="layui-btn layui-btn-primary layui-border-green">删除</button></td>
                    </tr>
                </c:forEach>
            </table>

            <jsp:include page="/footer.jsp"></jsp:include>
        </div>
    </div>
</div>


<script type="text/javascript">
    $("#nav li:nth-child(5) dl dd:nth-child(1)").addClass("layui-this");
    $("#nav li:nth-child(5)").addClass("layui-nav-itemed");
</script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
        element.init();
    });
</script>

</body>
</html>

