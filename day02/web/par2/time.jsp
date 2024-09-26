<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/9/12
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %>
<%
    LocalDate date = LocalDate.now();
    LocalTime time = LocalTime.now();
%>
<h2>用户在<%=date.getYear()%>/<%=date.getMonthValue()%>/<%=date.getDayOfMonth()%><br>
    <%=time.getHour()%>:<%=time.getMinute()%>:<%=time.getSecond()%>访问了网页
</h2>