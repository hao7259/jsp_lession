<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/9/26
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.hao.Car" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<form action="">
	汽车牌号：<input type="text" name="num"><br>
	汽车名称：<input type="text" name="name"><br>
	生产日期：<input type="text" name="date"><br>
	<input type="submit">
	<jsp:useBean id="car"  class="com.hao.Car"/>
<%
	car.setNumber(request.getParameter("num"));
	car.setName(request.getParameter("name"));
	car.setDate(request.getParameter("date"));
%>
<table border="1px" style="border: 1px">
	<tr>
		<th>汽车牌号</th>
		<th>汽车名称</th>
		<th>汽车生产日期</th>
	</tr>
	<tr>
		<td>
			<%= car.getNumber()%>
		</td>
		<td>
			<%= car.getName()%>
		</td>
		<td>
			<%= car.getDate()%>
		</td>
	</tr>
</table>
</body>
</html>
