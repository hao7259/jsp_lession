<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/10/17
  Time: 18:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<h2>输入整数，用逗号或非数字字符分割</h2>

<form action="handleForward" method="post">
  <textarea cols="50" name="number"></textarea><br>
  <input type="submit" name="submit" value="提交，查看personOne分析"/>
  <input type="submit" name="submit" value="提交，查看personTwo分析"/>
</form>
</body>
</html>
