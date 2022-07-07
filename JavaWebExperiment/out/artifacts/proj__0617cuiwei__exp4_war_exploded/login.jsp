<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/4/28
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<form action="DoLogin.jsp" method="post">
    <table border="1" align="center">
        <tr>
            <td colspan="2">用户登录</td>
        </tr>
        <tr>
            <td>登录ID：</td>
            <td><input type="text" name="uid" ></td>
        </tr>
        <tr>
            <td>登录密码：</td>
            <td><input type="password" name="upassword"></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;<input type="submit" value="登录">&nbsp;&nbsp;
                <input type="reset" value="重置">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="remenber" checked>记住我
            </td>
        </tr>
    </table>
    <h5 align="center">如果尚未注册请点击这里注册，请点击这里<a href="register.jsp">注册</a> </h5>
    <h5 align="center">如果您是管理员，请点击<a href="mlogin.jsp">这里</a> 进入！！</h5>
</form>
</center>
</body>
</html>
