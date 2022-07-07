<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/6
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" %>
<html>
<head>
    <title>异常处理的页面</title>
</head>
<body>
<%
    if(exception!=null){
        System.out.println("异常的错误信息为：" + exception.getMessage());
    }
%>
</body>
</html>
