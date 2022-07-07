<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/4/3
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现页面计数器</title>
</head>
<body>
<%
    int n;
    if(application.getAttribute("num") == null)
        n = 1;
    else
        n = Integer.valueOf(application.getAttribute("num").toString());
    if(session.isNew())
        n++;
    application.setAttribute("num", n);
    out.println("欢迎光临! 您是第 " + application.getAttribute("num") + " 位访问者！");
%>
</body>
</html>
