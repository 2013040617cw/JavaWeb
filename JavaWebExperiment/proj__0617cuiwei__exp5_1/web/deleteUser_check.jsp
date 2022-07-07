<%@ page import="com.beans.UserBean" %>
<%@ page import="com.dao.UserDao" %>
<%@ page import="com.dao.UserDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/22
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除数据库操作</title>
</head>
<body>
<%
    String uid = request.getParameter("uid");
    UserBean user = new UserBean();
    user.setUid(uid);
    UserDao users = new UserDaoImpl();
   if(users.Delete(user)){
       response.sendRedirect("deleteUser_success.jsp");
   }

%>
</body>
</html>
