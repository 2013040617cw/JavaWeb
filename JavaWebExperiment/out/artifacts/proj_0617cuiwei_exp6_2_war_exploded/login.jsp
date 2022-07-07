<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/27
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="utf-8"%>

<html>
<head>
    <title>登录页面</title>
</head>
<body>
<form method="post" action="login">
    <table align="center" border="1">
        <tr>
            <td>用户名:</td>
            <td colspan="2"><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td colspan="2"><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="3"><input type="submit" value="提交"></td>
        </tr>

    </table>
</form>
</body>
</html>
