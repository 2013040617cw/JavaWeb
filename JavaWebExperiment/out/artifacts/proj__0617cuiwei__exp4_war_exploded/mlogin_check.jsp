<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/17
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录检查页面</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
        PreparedStatement pst=conn.prepareStatement("select * from t_manager where mid=? and mpassword=?");
        String uid = request.getParameter("mid");
        String upassword =  request.getParameter("mpassword");
        pst.setString(1,uid);
        pst.setString(2,upassword);
        ResultSet resultSet = pst.executeQuery();
        Cookie cookie1 = new Cookie("UID","uid");
        response.addCookie(cookie1);
        if(resultSet.next()){
            response.sendRedirect("mlogin_success.jsp");
        }
        else{
            response.sendRedirect("mlogin_failure.jsp");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
