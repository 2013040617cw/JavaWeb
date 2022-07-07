<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/6
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page errorPage="error.jsp" %>
<html>
<head>
    <title>Exception内置对象的使用</title>
</head>
<body>
<%
    int ia = 10;
    int ib = 0;
    int sum = 0;
    sum = ia/ib;
    System.out.println("sum的值为：" + sum);
%>
</body>
</html>
