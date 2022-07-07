<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/6
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext内置对象的使用</title>
</head>
<body>
<%
    pageContext .setAttribute("name","huangzhong");
    System.out.println("pageContext内置对象设置成功");
%>
<%="获取到的pageContext内置对象的属性值为" + pageContext.getAttribute("name")%>
</body>
</html>
