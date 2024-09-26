        <%--
Created by IntelliJ IDEA.
User: 20575
Date: 2024/9/12
Time: 19:09
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="head.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2 align="center">页面3</h2>
<%
    String string = request.getParameter("num");
    int num = 0;
    if (string == null) {
        out.println("您未输入任何内容");
    } else {
        out.println("您输入的是" + string);
        num = Integer.parseInt(string);
    }
%>
<img src="three.png" width="<%=num%>" height="<%=num%>">
</body>
</html>
