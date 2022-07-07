<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/4/29
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<h1 align="center">注册操作</h1>
<hr>
<form action="register_check.jsp"  method="post">
    <table border="1" align="center">
        <tr>
            <td colspan="3" align="center">用户册</td>
        </tr>
        <tr>
            <td>登录ID:</td>
            <td colspan="2"><input type="text" name="uid"></td>
        </tr>
        <tr>
            <td>真实姓名:</td>
            <td colspan="2"><input type="text" name="uname"></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td ><input type="radio" name="usex">男</td>
            <td><input type="radio" name="usex" checked="checked">女</td>
        </tr>
        <tr>
            <td>E-mail:</td>
            <td colspan="2"><input type="text" name="uemail"></td>
        </tr>
        <tr>
            <td>登录密码:</td>
            <td colspan="2"><input type="text" name="upassword"></td>
        </tr>
        <tr>
            <td>确认密码:</td>
            <td colspan="2"><input type="text" name="upassword1"></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;<input type="submit" value="注册">&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <input type="reset" value="重置">&nbsp;&nbsp;
            </td>
        </tr>
    </table>

</form>
</body>
</html>
