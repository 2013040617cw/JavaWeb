<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/7
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现前端页面传入过来的参数接受和设置</title>
</head>
<body>
<jsp:useBean id="student" scope="session" class="com.cuiwei.demo02.Student"/>
<jsp:setProperty name="student" property="id" param="id1"/>
<jsp:setProperty name="student" property="name" param="name1"/>
</body>
</html>
