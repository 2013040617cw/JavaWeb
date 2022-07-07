<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/2
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除操作</title>
</head>
<body>
<%
    int i = 0;
    try {
        String id = request.getParameter("id");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
        PreparedStatement pst=conn.prepareStatement("delete  from t_news where id = ?");
        pst.setString(1,id);
        i = pst.executeUpdate();
        if(i != 0){
            response.sendRedirect("delect_success.jsp");
        }
        else{
            response.sendRedirect("delect_fail.jsp");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }


%>
</body>
</html>
