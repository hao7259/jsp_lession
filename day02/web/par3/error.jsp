<%--
Created by IntelliJ IDEA.
User: 20575
Date: 2024/9/12
Time: 19:11
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="head.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2 align="center">页面error</h2>
<%
    String string = request.getParameter("num");
    out.println("您输入的是"+string);
%><br>
<img src="error.png">
</body>
</html>
