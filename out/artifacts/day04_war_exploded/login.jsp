<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/9/26
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="head.jsp" %>
<form action="" method="post" style="text-align: center ;margin-top: 30px">
    请输入姓名：<input type="text" name="name">
    <input type="submit" value="提交">
</form>
<%
    String name = request.getParameter("name");
    session.setAttribute("login_name", name);
%>
</body>
</html>
