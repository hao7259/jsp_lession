<%--
    Created by IntelliJ IDEA.
    User: 20575
    Date: 2024/9/19
    Time: 18:54
    To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    input{
        margin: 0 auto;
        width: 60px;
    }
    form{
        width: 600px;
        margin: 0 auto;
    }
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="result.jsp" method="post">
    <input type="text" name="num1" size="6">
    <select name="select">
        <option value="+" selected="selected">加</option>
        <option value="-">减</option>
        <option value="*">乘</option>
        <option value="/">除</option>
    </select>
    <input type="text" name="num2" size="6">
    <br>
    <input type="reset">
    <input type="submit">

</form>
</body>
</html>
