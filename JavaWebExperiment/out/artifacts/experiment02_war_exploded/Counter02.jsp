<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/4/7
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现页面计数器</title>
</head>
<body>
<%!
    static int count = 1;
%>
<%
    if(session.isNew())
        count++;
%>
<%="欢迎光临! 您是第 " + count + " 位访问者！" %>
</body>
</html>
