<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/2
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改操作</title>
</head>
<body>
<%!
    String title;
    String author;
    String date;
    String redu;
    String description;
    String id;

%>
<%
    try {
        // 获取表单信息
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");

        out.print("传过来的id是 "+ id);

        //数据库操作
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
        PreparedStatement preparedStatement = conn.prepareStatement("select * from t_news where id = ?");
        preparedStatement.setString(1,id);
        ResultSet resultSet = preparedStatement.executeQuery();

        while (resultSet.next()) {

            id = resultSet.getString("id");
            title = resultSet.getString("title");
            author = resultSet.getString("author");
            date = resultSet.getString("date");
            redu = resultSet.getString("redu");
            description = resultSet.getString("description");

        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }

%>
<form action="update_check.jsp" method="POST" class="form">
    id：&nbsp&nbsp&nbsp&nbsp<input type="text" name="id" value=<%=id%>> <br><br>
    标题：<input type="text" name="title" value=<%=title%>> <br><br>
    作者：<input type="text" name="author" value=<%=author%>> <br><br>
    日期：<input type="text" name="date" value=<%=date%>> <br><br>
    热度：<input type="text" name="redu" value=<%=redu%>> <br><br>
    详情：<br>
    <textarea name="description" id="" cols="30" rows="20"><%=description%></textarea> <br><br>

    <input type="submit" id="submit" value="修改">

</form>

</body>
</html>
