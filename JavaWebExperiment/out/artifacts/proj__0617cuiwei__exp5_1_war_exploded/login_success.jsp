<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.dao.UserDaoImpl" %>
<%@ page import="com.dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/22
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<h1 align="center">登录成功！欢迎进入后台管理</h1>
<hr>
<%--<h1 align="center">登陆成功，欢迎[<%=name%>]访问新闻管理系统</h1>--%>
<div>
    <a href="addUser.jsp" style="text-decoration-line: none">增加用户</a>
    <a href="login.jsp" style="text-decoration-line: none">安全退出</a>
</div>

<table border="1">

    <tr>
        <td bgcolor="#dcdcdc" align="center" width="350px">登录ID</td>
        <td bgcolor="#dcdcdc" align="center" width="200px">真实姓名</td>
        <td bgcolor="#dcdcdc" align="center" width="200px">登录密码</td>
        <td bgcolor="#dcdcdc" align="center" width="100px">性别</td>
        <td bgcolor="#dcdcdc" align="center" width="200px">E-Mail</td>
        <td bgcolor="#dcdcdc" align="center" width="200px">注册时间</td>
        <td bgcolor="#dcdcdc" align="center" width="200px">管理员操作</td>
    </tr>
    <%

        UserDao users = new UserDaoImpl();
        ResultSet resultSet = users.Select2();
        while (resultSet.next()){
    %>
    <tr>
        <td bgcolor="#f0f8ff" align="center" width="350px"><%=resultSet.getString("uid")%></td>
        <td bgcolor="#f0f8ff" align="center" width="200px"><%=resultSet.getString("uname")%></td>
        <td bgcolor="#f0f8ff" align="center" width="200px"><%=resultSet.getString("upassword")%></td>
        <td bgcolor="#f0f8ff" align="center" width="100px"><%=resultSet.getString("usex")%></td>
        <td bgcolor="#f0f8ff" align="center" width="100px"><%=resultSet.getString("uemail")%></td>
        <td bgcolor="#f0f8ff" align="center" width="100px"><%=resultSet.getString("uregdate")%></td>
        <td bgcolor="#f0f8ff" align="center" width="200px">
            <a style="text-decoration-line: none" href="updateUser.jsp?uid=<%= resultSet.getString("uid")%>">修改</a>
            <a style="text-decoration-line: none" href="deleteUser_check.jsp?uid=<%= resultSet.getString("uid")%>">删除</a>
        </td>
    </tr>
    <%
        }
    %>

</table>

</body>
</html>
