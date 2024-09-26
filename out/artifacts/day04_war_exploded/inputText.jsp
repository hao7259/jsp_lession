<%@ page contentType="text/html" %>
<%@ page pageEncoding="utf-8" %>
<HTML>
<style>
</style>
<body>
<p>
    输入英文文章，单击提交键：
        <%
   String content = "word word word word test1 test1 test1 test2" ;
%>
<form action="findWord.jsp" method=post name=form>
   <textArea name="english" rows=5 cols=38><%= content %>
   </textArea>
    <br><input type="submit" name="submit" value="提交"/>
</form>

</body>
</HTML>
