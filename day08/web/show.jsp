<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/10/24
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<jsp:useBean id="bean" scope="session" class="com.hao.trapeziumBean"/>
上底：<jsp:getProperty name="bean" property="up"/>
下底：<jsp:getProperty name="bean" property="down"/>
高：<jsp:getProperty name="bean" property="height"/>
面积：<jsp:getProperty name="bean" property="area"/>



</body>
</html>
