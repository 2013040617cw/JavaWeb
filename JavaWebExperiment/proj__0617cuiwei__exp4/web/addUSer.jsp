<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/17
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加用户页面</title>
</head>
<body>
<center>
    <form action="addDoUSer.jsp" method="post">
        <table align="center">
            <tr>
                <td>登录ID: </td>
                <td colspan="2"><input name="uid" type="text"></td>
            </tr>
            <tr>
                <td>真实姓名: </td>
                <td colspan="2"><input name="uname" type="text"></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td ><input type="radio" name="usex">男</td>
                <td><input type="radio" name="usex" checked="checked">女</td>
            </tr>
            <tr>
                <td>email: </td>
                <td colspan="2"><input name="uemail" type="text"></td>
            </tr>
            <tr>
                <td>登录密码: </td>
                <td colspan="2"><input name="upassword" type="text"></td>
            </tr>

            <tr>
                <td> <input type="submit" value="添加用户"></td>
                <td colspan="2"><input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>

</center>
</body>
</html>
