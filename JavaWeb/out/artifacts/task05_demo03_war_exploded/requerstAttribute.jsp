<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/19
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>请求的属性状态变化</title>
</head>
<body>
<%
    //添加属性
    request.setAttribute("name" ,"zahngfei");
    //实现属性的修改
    request.setAttribute("name","guanyu");
    //实现属性的删除
    request.removeAttribute("name");
%>
</body>
</html>
