<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/10
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现请求参数数值的获取</title>
</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<%----使用JSP原始方式进行获取----%>
<%--<%="姓名是：" + request.getParameter("name")%>
<%="爱好是：" + request.getParameter("hobby")%>--%>

<%---------使用EL表达式获取请求的参数值---------%>
姓名是：${param.name}<br>
爱好是：${paramValues.hobby[0]}<br>
</body>
</html>
