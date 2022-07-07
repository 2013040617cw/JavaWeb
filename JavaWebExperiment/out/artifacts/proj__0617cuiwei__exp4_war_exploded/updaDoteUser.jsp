<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %><%--
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
    <title>管理员身份进入后的修改</title>
</head>
<body>
<%
    try {
        String uid = request.getParameter("uid");
        String uname = request.getParameter("uname");
        String upassword = request.getParameter("upassword");
        String usex = request.getParameter("usex");
        String uemail = request.getParameter("uemail");
        String uregdate = request.getParameter("uregdate");

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019?characterEncoding=utf8","root","123456");
        PreparedStatement pst1=conn.prepareStatement("update t_user set  uname=? ,upassword=? ,usex=?,uemail=? , uregdate = ?where uid= ?");
        pst1.setString(1,uname);
        pst1.setString(2,upassword);
        pst1.setString(3,usex);
        pst1.setString(4,uemail);
        pst1.setString(5,uregdate);
        pst1.setString(6,uid);
        int i = pst1.executeUpdate();
        if(i!=0){
            response.sendRedirect("updateUser_success.jsp");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

</body>
</html>
