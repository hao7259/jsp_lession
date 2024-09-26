<%--
Created by IntelliJ IDEA.
User: 20575
Date: 2024/9/19
Time: 18:54
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    int num1;
    int num2;
    String operate;
    try {
        num1 = Integer.parseInt(request.getParameter("num1"));
        num2 = Integer.parseInt(request.getParameter("num2"));
        operate = request.getParameter("select");
        out.print(num1+operate+num2+"的结果为");
        if ("+".equals(operate)) {
            out.println(num1 + num2);
        } else if ("-".equals(operate)) {
            out.println(num1 - num2);
        } else if ("*".equals(operate)) {
            out.println(num1 * num2);
        } else if ("/".equals(operate)) {
            out.println(num1 / num2);
        }else {
            out.println("出错");
        }
    } catch (Exception e) {
        out.println("请输入数字字符");
        out.print("<a href=\"input.jsp\">返回</a>");
    }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
