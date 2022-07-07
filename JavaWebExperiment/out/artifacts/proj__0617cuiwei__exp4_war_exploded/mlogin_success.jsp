<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/17
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录成功页面</title>
</head>
<body>
<%//数据库操作
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn1= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
    PreparedStatement pst1=conn1.prepareStatement("select * from t_user ");
    ResultSet resultSet1 = pst1.executeQuery();
    // 获取表单信息
    request.setCharacterEncoding("UTF-8");
    %>

<h1 align="center">登录成功！欢迎进入后台管理</h1>
<hr>
<%--<h1 align="center">登陆成功，欢迎[<%=name%>]访问新闻管理系统</h1>--%>
<div>
    <a href="addUSer.jsp" style="text-decoration-line: none">增加用户</a>
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
        while(resultSet1.next()){
    %>
    <tr>
        <td bgcolor="#f0f8ff" align="center" width="350px"><%=resultSet1.getString("uid")%></td>
        <td bgcolor="#f0f8ff" align="center" width="200px"><%=resultSet1.getString("uname")%></td>
        <td bgcolor="#f0f8ff" align="center" width="200px"><%=resultSet1.getString("upassword")%></td>
        <td bgcolor="#f0f8ff" align="center" width="100px"><%=resultSet1.getString("usex")%></td>
        <td bgcolor="#f0f8ff" align="center" width="100px"><%=resultSet1.getString("uemail")%></td>
        <td bgcolor="#f0f8ff" align="center" width="100px"><%=resultSet1.getString("uregdate")%></td>
        <td bgcolor="#f0f8ff" align="center" width="200px">
        <a style="text-decoration-line: none" href="updateUser.jsp?uid=<%= resultSet1.getString("uid")%>">修改</a>
        <a style="text-decoration-line: none" href="deleteDoUser.jsp?uid=<%= resultSet1.getString("uid")%>">删除</a>
        </td>
    </tr>
    <%
        }
    %>

</table>

</body>

</html>
