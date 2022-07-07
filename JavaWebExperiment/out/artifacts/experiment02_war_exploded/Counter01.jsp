<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/4/7
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现页面计数器</title>
</head>
<body>
<%! int count = 0; %>
<% count++; %>
欢迎您，您是访问者
<%= count %>
</body>
</html>
