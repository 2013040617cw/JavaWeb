<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/20
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现ServletContext对象属性的改变</title>
</head>
<body>
<%
    //设置属性
   application.setAttribute("name","cuiwei");
   //修改属性
    application.setAttribute("name","cuiwei666000");
    //删除属性
    application.removeAttribute("name");
%>
</body>
</html>
