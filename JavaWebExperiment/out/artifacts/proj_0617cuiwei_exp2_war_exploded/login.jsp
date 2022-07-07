<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/4/3
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<%
    String userId = "";
    String password = "";
    //获取Cookies中的信息
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        for(int i=0; i<cookies.length; i++){
            //Cookie的名字为Cookie2019
            //split为分隔符
            //如果Cookie中有值则直接填写
            if (cookies[i].getName().equals("Cookie2019")) {
                userId = cookies[i].getValue().split("#")[0];
                password = cookies[i].getValue().split("#")[1];
            }
        }
    }
%>
<center>
    <%----include指令是为了引入另一个文件---%>
    <jsp:include page="header.jsp" ></jsp:include>
    <form action="login_check.jsp" method="post">
        <table border="1">
            <tr>
                <td colspan="2">用户登录</td>
            </tr>
            <tr>
                <td>登录ID：</td>
                <td><input type="text" name="id" value="<%=userId %>"></td>
            </tr>
            <tr>
                <td>登录密码：</td>
                <td><input type="password" name="password" value="<%=password %>"></td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;<input type="submit" value="登录">&nbsp;&nbsp;
                    <input type="reset" value="重置">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="remenber" checked>记住我
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
