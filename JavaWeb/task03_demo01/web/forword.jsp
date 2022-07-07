<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/4
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp的转发</title>
</head>
<body>
<jsp:forward page="target.jsp">
<jsp:param name="name" value="zhangfei"/>
</jsp:forward>
</body>
</html>
