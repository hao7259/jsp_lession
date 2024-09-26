<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/9/26
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="head.jsp"%>
<%
    String name = (String) session.getAttribute("login_name");
    if (name == null || name.isEmpty()) {
        response.sendRedirect("login.jsp");
    }
%>
<img src="image1.png"  alt="img1">
</body>
</html>
