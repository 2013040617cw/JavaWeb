<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/2
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询详情页面</title>
</head>
<body>
<%!
    String description = null;
%>
<h1 align="center">查询详情操作</h1>
<hr>

<%
             String id = request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn2= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
            PreparedStatement pst2=conn2.prepareStatement("select * from t_news where id = ?");
           pst2.setString(1,id);
            ResultSet resultSet2 = pst2.executeQuery();
// 获取表单信息
request.setCharacterEncoding("UTF-8");
    while(resultSet2.next()) {

        description = resultSet2.getString("description");

    }

%>
<style>
    .div {
        margin-top: 5%;
        margin-left: 20%;
    }
</style>
<div class="div">
    <p><%=description%></p>
</div>

</body>
</html>
