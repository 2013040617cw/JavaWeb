<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/4/29
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>登录成功页面</title>
</head>
<body>
<%//数据库操作
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn1= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
    PreparedStatement pst1=conn1.prepareStatement("select * from t_news ");
    ResultSet resultSet1 = pst1.executeQuery();
    // 获取表单信息
request.setCharacterEncoding("UTF-8");
%>
<%--<%!
    Cookie cookies[];
    String uid = "UID";
    String name = "";
%>

<%
    cookies = request.getCookies();
    for(Cookie cookie:cookies){
        if(uid.equals(cookie.getName())){
            name = cookie.getValue();
        }
    }
%>--%>
<h1 align="center">登录操作</h1>
<hr>
<%--<h1 align="center">登陆成功，欢迎[<%=name%>]访问新闻管理系统</h1>--%>
<div>
    <a href="addNews.jsp" style="text-decoration-line: none">增加新闻</a>
    <a href="login.jsp" style="text-decoration-line: none">安全退出</a>
</div>

<table border="1">

    <tr>
        <td bgcolor="#dcdcdc" align="center" width="350px">标题</td>
        <td bgcolor="#dcdcdc" align="center" width="200px">作者</td>
        <td bgcolor="#dcdcdc" align="center" width="200px">日期</td>
        <td bgcolor="#dcdcdc" align="center" width="100px">热度</td>
        <td bgcolor="#dcdcdc" align="center" width="200px">操作</td>
    </tr>
    <%
        while(resultSet1.next()){
    %>
    <tr>
        <td bgcolor="#f0f8ff" align="center" width="350px"><%=resultSet1.getString("title")%></td>
        <td bgcolor="#f0f8ff" align="center" width="200px"><%=resultSet1.getString("author")%></td>
        <td bgcolor="#f0f8ff" align="center" width="200px"><%=resultSet1.getString("date")%></td>
        <td bgcolor="#f0f8ff" align="center" width="100px"><%=resultSet1.getString("redu")%></td>
        <td bgcolor="#f0f8ff" align="center" width="200px">
            <a style="text-decoration-line: none" href="select.jsp?id=<%= resultSet1.getString("id")%>">查询详情</a>

            <a style="text-decoration-line: none" href="update.jsp?id=<%= resultSet1.getString("id")%>">修改</a>
            <a style="text-decoration-line: none" href="delect_check.jsp?id=<%= resultSet1.getString("id")%>">删除</a>

        </td>
    </tr>

    <%
        }
    %>



</table>

</body>
</html>
