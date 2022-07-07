<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/4/29
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户存在页面</title>
</head>
<body>
<h1 align="center">注册操作</h1>
<hr>
<h4 align="center">用户<%=request.getParameter("uid")%>已经存在，请重新注册</h4>
<h4 align="center"><a href="register.jsp">返回注册页面</a> </h4>
</body>
</html>
