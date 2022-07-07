<%@ page import="com.dao.UserDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.dao.UserDaoImpl" %>
<%@ page import="com.beans.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/22
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改页面</title>
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
    request.setCharacterEncoding("UTF-8");

    String uid = request.getParameter("uid");
    System.out.println("获取到的ID为" + uid);
    UserBean user = new UserBean();
    user.setUid(uid);
    UserDao users = new UserDaoImpl();
    ResultSet resultSet = users.Select3();
    while (resultSet.next()){
        id = resultSet.getString("uid");
        name = resultSet.getString("uname");
        password = resultSet.getString("upassword");
        sex = resultSet.getString("usex");
        email = resultSet.getString("uemail");
        date = resultSet.getString("uregdate");
    }

%>
<form action="updateUser_check.jsp" method="POST" class="form">
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
