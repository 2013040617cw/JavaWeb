<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/2
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询操作</title>
</head>
<body>
<%
    try {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String date = request.getParameter("date");
        String redu = request.getParameter("redu");
        String id = request.getParameter("id");
        String description = request.getParameter("description");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019?characterEncoding=UTF-8","root","123456");
        PreparedStatement pst1=conn.prepareStatement("update t_news set title= ? , author=? ,date=? ,redu=?,description=? where id= ?");
        pst1.setString(1,title);
        pst1.setString(2,author);
        pst1.setString(3,date);
        pst1.setString(4,redu);
        pst1.setString(5,description);
        pst1.setString(6,id);
        int i = pst1.executeUpdate();
        if(i!=0){
            response.sendRedirect("update_success.jsp");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>


</body>
</html>
