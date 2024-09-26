<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/9/12
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    StringBuilder personList;
    int count=0;
    public void judge(){
        if (count==0){
            personList=new StringBuilder();
        }
    }
    public void addPerson(String p){
        judge();
        personList.append(p).append(" ");
        count++;
    }
%>
<%
    String name = request.getParameter("yname");
    if (name.isEmpty() ||name.length()>10)
%><jsp:forward page="inputName.jsp" />
<%
    addPerson(name);
%>
<%= personList%>有
<%= count%>个姓名
