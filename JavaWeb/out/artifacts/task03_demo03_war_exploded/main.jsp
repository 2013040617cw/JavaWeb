<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/8
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功，欢迎使用</title>
</head>
<body>
<h1>登录成功，欢迎<%=((User)session.getAttribute("user")).getUserName()%>使用</h1>
</body>
</html>
