<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/9/5
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page pageEncoding="utf-8" %>
<%
    out.print("hello world");
    out.print("<br>");
    out.print("<br>");

%>
<%
    for (int i = 0; i < 26; i++) {
        out.print((char) ('a' + i) + " ");
    }
    out.print("<br>");
    out.print("<br>");
    for (int i = 1; i < 10; i++) {
        for (int j = 1; j <= i; j++) {
            out.print(i + "*" + j + "=" + i * j + "  ");
        }
        out.print("<br>");
    }
%>
