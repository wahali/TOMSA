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
<c:if test = "${sessionScope.course==null}">
    <p>
        当前无课程信息。
    </p>
</c:if>
<c:if test="${sessionScope.course!=null}">
    <table  border="1">
        <tr>
            <th>课程名</th>
            <th>课程号</th>
            <th>课程简介</th>
        </tr>
        <c:forEach items = "${sessionScope.course}" var="course" begin = "0">
            <tr>
                <th>${course.couname}</th>
                <th>${course.couid}</th>
                <th>${course.couintro}</th>
            </tr>
        </c:forEach>
    </table>
</c:if>
<a href="StudentInterface.jsp">返回</a>
</body>
</html>
