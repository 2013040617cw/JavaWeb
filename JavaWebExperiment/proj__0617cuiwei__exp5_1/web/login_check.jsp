<%@ page import="com.beans.UserAdmin" %>
<%@ page import="com.dao.UserDao" %>
<%@ page import="com.dao.UserDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/21
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String mid = request.getParameter("mid");
    String mpassword = request.getParameter("mpassword");
    UserAdmin admin  = new UserAdmin();
    admin.setMid(mid);
    admin.setMpassword(mpassword);
    UserDao users = new UserDaoImpl();
    if(users.Select1(admin)){
        response.sendRedirect("login_success.jsp");
    }

%>
</body>
</html>
