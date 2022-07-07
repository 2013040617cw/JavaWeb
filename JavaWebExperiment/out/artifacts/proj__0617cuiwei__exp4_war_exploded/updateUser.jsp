<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/17
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>管理员进入后的修改页面</title>
</head>
<body>
<%!
    String id;
    String name;
    String password;
    String sex;
    String email;
    String date;

%>
<%
    try {
        // 获取表单信息
        request.setCharacterEncoding("UTF-8");

        String uid = request.getParameter("uid");

        out.print("传过来的id是 "+ id);

        //数据库操作
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
        PreparedStatement preparedStatement = conn.prepareStatement("select * from t_user where uid = ?");
        preparedStatement.setString(1,uid);
        ResultSet resultSet = preparedStatement.executeQuery();

        while (resultSet.next()) {

            id = resultSet.getString("uid");
            name = resultSet.getString("uname");
            password = resultSet.getString("upassword");
            date = resultSet.getString("date");
            sex = resultSet.getString("usex");
            email = resultSet.getString("uemail");
            date = resultSet.getString("uregdate");

        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }

%>
<form action="updaDoteUser.jsp" method="POST" class="form">
    登录ID：&nbsp&nbsp&nbsp&nbsp<input type="text" name="uid" value=<%=id%>> <br><br>
    真实姓名：<input type="text" name="uname" value=<%=name%>> <br><br>
    登录密码：<input type="text" name="upassword" value=<%=password%>> <br><br>
    性别：<input type="text" name="usex" value=<%=sex%>> <br><br>
    E-Mail：<input type="text" name="uemail" value=<%=email%>> <br><br>
    注册时间：<input type="text" name="uregdate" value=<%=date%>> <br><br>

    <input type="submit" id="submit" value="修改">

</form>
</body>
</html>
