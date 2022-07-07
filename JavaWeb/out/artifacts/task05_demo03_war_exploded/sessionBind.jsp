<%@ page import="com.cuiwei.demo03.person" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/20
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现Session对象的解除和绑定</title>
</head>
<body>
<%
    person p = new person();
    p.setName("cuiwie");
    p.setAge(10);
    //将对象与Session对象进行绑定
    session.setAttribute("p",p);
    //解除绑定
    session.removeAttribute("p");
%>
</body>
</html>
