<%--
Created by IntelliJ IDEA.
User: 20575
Date: 2024/9/12
Time: 19:09
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="head.jsp" %>
<form action="one.jsp" method="post">
    请输入一个1-100的整数 <input type="text" name="num"><br>
    <input type="reset">
    <input type="submit">
</form>
<%
    // 获取表单提交的整数
    String numberStr = request.getParameter("num");
    if (numberStr == null||numberStr.isEmpty()) {
        numberStr = "0";
    }
    int num = Integer.parseInt(numberStr);
    if (num >= 1 && num <= 50) {
%>
<jsp:forward page="two.jsp">
    <jsp:param name="number" value="<%=num%>"/>
</jsp:forward>
<%
} else if (num > 50 && num <= 100) {
%>
<jsp:forward page="three.jsp">
    <jsp:param name="number" value="<%=num%>"/>
</jsp:forward>
<%
} else if (num > 100) {
%>
<jsp:forward page="error.jsp">
    <jsp:param name="number" value="<%=num%>"/>
</jsp:forward>
<%
    }
%>

