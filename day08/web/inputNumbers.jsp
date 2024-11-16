<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/10/24
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="numberBean" class="com.hao.numberBean" scope="session"/>
<html>
<head>
	<title>Title</title>
</head>
<body>
<form action="cal">
	输入首项：<input type="text" name="first"><br>
	输入公差（公比）：<input type="text" name="var"><br>
	求和项数：<input type="text" name="number"><br>
	<input type="submit" name="submit" value="提交（求等差数列）"><br>
	<input type="submit" name="submit" value="提交（求等比数列）">
</form>
<table border="1">
	<tr>
		<th>首项</th>
		<th><jsp:getProperty name="numberBean" property="name"/></th>
		<th>项数</th>
		<th>求和结果</th>
	</tr>
	<td><jsp:getProperty name="numberBean" property="first"/></td>
	<td><jsp:getProperty name="numberBean" property="var"/></td>
	<td><jsp:getProperty name="numberBean" property="number"/></td>
	<td><jsp:getProperty name="numberBean" property="sum"/></td>

</table>

</body>
</html>
