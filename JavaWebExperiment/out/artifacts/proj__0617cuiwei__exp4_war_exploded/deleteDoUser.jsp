<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/17
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户删除操作</title>
</head>
<body>
<%
    int i = 0;
    try {
        String uid = request.getParameter("uid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
        PreparedStatement pst=conn.prepareStatement("delete  from t_user where uid = ?");
        pst.setString(1,uid);
        i = pst.executeUpdate();
        if(i != 0){
            response.sendRedirect("deleteUser_success.jsp");
        }
        else{
            response.sendRedirect("delectUser_fail.jsp");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }


%>
</body>
</html>
