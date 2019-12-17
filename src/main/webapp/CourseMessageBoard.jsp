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

    <script language="JavaScript">
            function check() {
            var tem = $("#currentquestionpage").val();
            if(tem===""){alert('请输入跳转的页码');}
            else if( tem <= 0 || tem > ${sessionScope.questionpage}){alert('请输入有效的页码');}
            else{
                $('#myform4').submit();
            }
        }
    </script>
    <script src="js/jquery.js"></script>

</head>
<h2>
    课程信息
</h2>
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

<h2>
    留言信息
</h2>
<c:if test="${sessionScope.question==null}">
    <p>
        当前无留言信息。
    </p>
</c:if>
<c:if test="${sessionScope.question!=null}">
    <p>
        一共有${sessionScope.questionpage}页,一共有${sessionScope.question.size()}个提问
    </p>
    <table  border="1">
        <tr>
            <th>问题编号</th>
            <th>课程名</th>
            <th>用户名</th>
            <th>标题</th>
            <th>内容</th>
        </tr>
        <c:if test="${(sessionScope.currentquestionpage-1)*10+9<=sessionScope.question.size()}">
            <c:forEach items = "${sessionScope.question}" var="question" begin = "${(sessionScope.currentquestionpage-1)*10}" end ="${(sessionScope.currentquestionpage-1)*10+9}">
                <tr>
                    <th>${question.mid}</th>
                    <th>${question.coursename}</th>
                    <th>${question.username}</th>
                    <th>${question.headline}</th>
                    <th>${question.content}</th>
                </tr>
            </c:forEach>
        </c:if>
        <c:if test="${(sessionScope.currentquestionpage-1)*10+9>sessionScope.question.size()}">
            <c:forEach items = "${sessionScope.question}" var="question" begin = "${(sessionScope.currentquestionpage-1)*10}" end ="${sessionScope.question.size()}">
                <tr>
                    <th>${question.mid}</th>
                    <th>${question.coursename}</th>
                    <th>${question.username}</th>
                    <th>${question.headline}</th>
                    <th>${question.content}</th>
                </tr>
            </c:forEach>
        </c:if>

    </table>
    <form action="ChangeCurrentQuestionPage.do" id = "myform4" name ="myform4" method="post">
        <label for="currentquestionpage" >输入页码</label>
        <input type="text" name = "currentquestionpage" id = "currentquestionpage" value = ${sessionScope.currentquestionpage}>
        <button type = "button" onclick = "check()"  >跳转</button>
    </form>
</c:if>



<a href="StudentInterface.jsp">返回</a>
</body>
</html>
