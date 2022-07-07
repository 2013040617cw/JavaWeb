<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/17
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="login" method="post">
    <table border="10" >
        <tr>
        <td colspan="3"  align="center">登录页面的实现</td>
        </tr>
        <tr>
        <td >
            用户名:
        </td>
        <td colspan="2">
            <input type="text"  name =  "username">
        </td>
        <tr/>
        <tr>
            <td>
                密         码:
            </td>
            <td colspan="2">
                <input type="text" name = "password">
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <input type="submit" value="登录">
            </td>
        </tr>

    </table>
</form>
</body>
</html>
