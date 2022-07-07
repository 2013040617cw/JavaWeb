<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/4/3
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>登录成功按钮</title>
</head>
<body>
<%
    if(session.getAttribute("username") == null)
    {
        response.sendRedirect("login.jsp");
    }
%>
<h2>欢迎[<%=session.getAttribute("username")%>]</h2>
<br>
<table>
    <tr>
        <th>新闻管理系统</th>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="center"><a href="function1.jsp">功能1</a></td>
    </tr>
    <tr>
        <td align="center"><a href="function2.jsp">功能2</a></td>
    </tr>
    <tr>
        <td align="center"><a href="function3.jsp">功能3</a></td>
    </tr>
</table>
<hr>
<table width="200">
    <tr>
        <td align="left">&nbsp;</td>
        <td align="right"><a href="logout.jsp">登出</a></td>
    </tr>
</table>
</center>
</body>

