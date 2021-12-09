<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${html_title}</title>
    <script>
        //导入layui的element模块，用于实现导航栏
        layui.use('element', function(){
            var element = layui.element;
            element.init();
        });
    </script>
    <style>
        .layui-card .layui-card-body .layui-icon {
            display: inline-block;
            width: 100%;
            height: 60px;
            line-height: 60px;
            text-align: center;
            border-radius: 2px;
            font-size: 30px;
            background-color: #F8F8F8;
            color: #333333;
            transition: all .3s;
            -webkit-transition: all .3s;
        }
        .layui-card .layui-card-body {
            text-align: center;
        }
        #notify {
            text-align: left;
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
            <div class="layui-card">
                <div class="layui-card-header">公告通知</div>
                <c:forEach items="${notifys}" var="notify">
                    <div class="layui-card-body" id="notify">${notify.notifyInfo}<p>${notify.notifyDate}</div>
                </c:forEach>
            </div>
            <div class="layui-card">
                <div class="layui-card-header" id="index-function">欢迎您！</div>
                <div class="layui-card-body">
                    <ul class="layui-row layui-col-space10 layui-this">
                        <li class="layui-col-xs3">
                            <a lay-href="/mavenTemplate/class/query" href="${pageContext.request.contextPath}/studentOptionalCourseServlet">
                                <i class="layui-icon layui-icon-survey"></i>
                                <cite>可选课程</cite>
                            </a>
                        </li>
                        <li class="layui-col-xs3">
                            <a lay-href="/mavenTemplate/major/query" href="${pageContext.request.contextPath}/studentSelectCourseListServlet">
                                <i class="layui-icon layui-icon-survey"></i>
                                <cite>查询学生</cite>
                            </a>
                        </li>
                        <li class="layui-col-xs3">
                            <a lay-href="/mavenTemplate/user/info" href="${pageContext.request.contextPath}/addStudentServlet">
                                <i class="layui-icon layui-icon-survey"></i>
                                <cite>增加学生</cite>
                            </a>
                        </li>
                        <li class="layui-col-xs3">
                            <a lay-href="/mavenTemplate/user/password" href="${pageContext.request.contextPath}/teacherListServlet">
                                <i class="layui-icon layui-icon-survey"></i>
                                <cite>查询教师</cite>
                            </a>
                        </li>
                        <li class="layui-col-xs3">
                            <a lay-href="/mavenTemplate/user/email" href="${pageContext.request.contextPath}/addTeacherServlet">
                                <i class="layui-icon layui-icon-survey"></i>
                                <cite>增加教师</cite>
                            </a>
                        </li>
                        <li class="layui-col-xs3">
                            <a lay-href="/mavenTemplate/student/modify" href="${pageContext.request.contextPath}/cdcListServlet">
                                <i class="layui-icon layui-icon-survey"></i>
                                <cite>学院专业查询</cite>
                            </a>
                        </li>
                        <li class="layui-col-xs3">
                            <a lay-href="/mavenTemplate/student/modify">
                                <i class="layui-icon layui-icon-survey"></i>
                                <cite>学院专业增加</cite>
                            </a>
                        </li>
                        <li class="layui-col-xs3">
                            <a lay-href="/mavenTemplate/student/modify" href="${pageContext.request.contextPath}/notifyServlet">
                                <i class="layui-icon layui-icon-survey"></i>
                                <cite>公告发布</cite>
                            </a>
                        </li>
                        <li class="layui-col-xs3">
                            <a lay-href="/mavenTemplate/student/modify" href="${pageContext.request.contextPath}/notifyListServlet">
                                <i class="layui-icon layui-icon-survey"></i>
                                <cite>公告列表</cite>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/footer.jsp"></jsp:include>
</div>
<script type="text/javascript">
    document.onkeydown = function(e) {
        e = window.event || e;
        var k = e.keyCode;
    }
</script>
<script type="text/javascript">
    $("#nav li:nth-child(1)").addClass("layui-nav-itemed");
    $("#nav li:nth-child(2)").addClass("layui-nav-itemed");
    $("#nav li:nth-child(3)").addClass("layui-nav-itemed");
    $("#nav li:nth-child(4)").addClass("layui-nav-itemed");
    $("#nav li:nth-child(5)").addClass("layui-nav-itemed");
</script>
</body>
</html>
