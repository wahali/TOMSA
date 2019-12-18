<%--
  Created by IntelliJ IDEA.
  User: 小飞侠666
  Date: 2019/12/4
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>老师页面</title>
</head>
<body>
<p>
    这边是教师页面；

</p>
<jsp:include page="ShowCourse.jsp" flush ="true"></jsp:include>
<p>
    <a href="CourseMessageBoard.jsp">查看所有课程及留言信息
    </a>
</p>
<p><a href="ShowTeacherCourse.do">查看及修改个人信息</a>
</p>
<p>
    <a href="TeacherResponse.jsp">查看教师自己的回答</a>
</p>
<p>
    <a href="">增删可访问课程的学生</a>
</p>

</body>
</html>
