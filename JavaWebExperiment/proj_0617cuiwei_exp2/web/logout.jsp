<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/4/3
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录注销页面</title>
</head>
<body>
<%session.invalidate(); %>
<jsp:forward page="login.jsp"/>
</body>
</html>
