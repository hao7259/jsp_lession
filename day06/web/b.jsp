<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/10/16
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.hao.RectangleBean" %>
<jsp:useBean id="bean" class="com.hao.RectangleBean" scope="page"/>

<%
	bean.setLength(Double.parseDouble(request.getParameter("length")));
	bean.setWidth(Double.parseDouble(request.getParameter("width")));
%>

<html>
<head>
	<title>矩形面积</title>
</head>
<body>
<h2>矩形的面积为：</h2>
<jsp:getProperty name="bean" property="area"/>
</body>
</html>
