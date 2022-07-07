<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/6/24
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<h1 align="center">欢迎您登录成功</h1>
<h2 align="center">欢迎<%=request.getParameter("shenfen")%>:<%=request.getParameter("username")%>光临！</h2>
</body>
</html>
