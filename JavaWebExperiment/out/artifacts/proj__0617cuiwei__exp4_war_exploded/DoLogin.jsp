<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/4/28
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="login_success.jsp"%>
<%@include file="login_fail.jsp"%>
<html>
<head>
    <title>数据库的连接</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
        PreparedStatement pst=conn.prepareStatement("select * from t_user where uid=? and upassword=?");
        String uid = request.getParameter("uid");
        String upassword =  request.getParameter("upassword");

        pst.setString(1,uid);
        pst.setString(2,upassword);
        ResultSet resultSet = pst.executeQuery();
        Cookie cookie1 = new Cookie("UID","uid");
        response.addCookie(cookie1);
        if(resultSet.next()){
            response.sendRedirect("login_success.jsp");
        }
      else{
          response.sendRedirect("login_fail.jsp");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>

</body>
</html>
