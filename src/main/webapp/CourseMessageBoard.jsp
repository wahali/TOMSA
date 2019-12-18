<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 小飞侠666
  Date: 2019/12/4
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程及留言留言信息</title>
</head>
<body>
<jsp:include page="ShowCourse.jsp" flush = "true"></jsp:include>
<jsp:include page="ShowQuestion.jsp" flush ="true"></jsp:include>
<a href="StudentInterface.jsp">返回</a>
</body>
</html>
