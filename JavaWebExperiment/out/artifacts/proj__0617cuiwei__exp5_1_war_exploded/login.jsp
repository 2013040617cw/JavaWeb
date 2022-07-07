<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/21
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<form action="login_check.jsp" method="post">
    <table align="center" border="1">
        <tr>
            <td colspan="3" align="center">登录</td>
        </tr>
        <tr>
            <td>ID:</td>
            <td colspan="2"><input type="text" name="mid"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td colspan="2"><input type="password" name="mpassword"></td>
        </tr>
        <tr>
            <td colspan="2" ><input type="submit" value="提交"> </td>
            <td><input type="reset" value="取消"></td>
        </tr>



    </table>


</form>
</body>
</html>
