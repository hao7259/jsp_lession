<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/9/26
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<form action="">
	汽车牌号：<input type="text" name="num"><br>
	汽车名称：<input type="text" name="name"><br>
	生产日期：<input type="text" name="date"><br>
	<input type="submit"><br>
	访问<a href="show.jsp">show.jsp</a>
	<jsp:useBean id="car" class="com.hao.Car" scope="session"/>
		<%
	car.setNumber(request.getParameter("num"));
	car.setName(request.getParameter("name"));
	car.setDate(request.getParameter("date"));
%>

</body>
</html>
