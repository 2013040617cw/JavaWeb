<%@ page import="com.beans.UserAdmin" %>
<%@ page import="com.dao.UserDao" %>
<%@ page import="com.dao.UserDaoImpl" %>
<%@ page import="com.beans.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/22
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户数据库操作</title>
</head>
<body>
<%
    String uid = request.getParameter("uid");
    String uname = request.getParameter("uname");
    String upassword = request.getParameter("upassword");
    String usex = request.getParameter("usex");
    String uemail = request.getParameter("uemail");
   /* String uregdate = request.getParameter("uregdate");*/
    UserBean user = new UserBean();
   user.setUid(uid);
   user.setUname(uname);
   user.setUpassword(upassword);
   user.setUsex(usex);
   user.setUemail(uemail);
   UserDao users = new UserDaoImpl();
  if( users.Insert(user)){
      response.sendRedirect("addUser_success.jsp");
  }
%>
</body>
</html>
