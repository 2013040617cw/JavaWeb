<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/17
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录界面</title>
</head>
<body>
<h1 align="center">登录操作</h1>
<center>
    <form action="mlogin_check.jsp" method="post">
        <table border="1" align="center">
            <tr>
                <td colspan="2" align="center">管理员登录</td>
            </tr>
            <tr>
                <td>登录ID：</td>
                <td><input type="text" name="mid" ></td>
            </tr>
            <tr>
                <td>登录密码：</td>
                <td><input type="password" name="mpassword"></td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;<input type="submit" value="登录">&nbsp;&nbsp;
                    <input type="reset" value="重置">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="remenber" checked>记住我
                </td>
            </tr>
        </table>
        <h5 align="center"><a href="mlogin.jsp">返回管理员登录页面</a> </h5>

    </form>
</center>
</body>
</html>
