<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/4/28
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据库的连接</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
        PreparedStatement pst=conn.prepareStatement("select * from t_user where uname=? and upassword=?");
        pst.setString(1,request.getParameter("uname"));
        pst.setString(2,request.getParameter("upassword"));
        ResultSet resultSet = pst.executeQuery();

        if(resultSet.next()){
            out.print("登录成功，欢迎" +  request.getParameter("uname"));
        }
        else{
            out.print("登陆失败，请重新登录");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
