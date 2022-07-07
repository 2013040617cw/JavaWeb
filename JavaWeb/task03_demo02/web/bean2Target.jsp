<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/7
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现Javabean中对象的打印</title>
</head>
<body>
<jsp:useBean id="student" scope="session" class="com.cuiwei.demo02.Student"/>
 经过参数赋值后，获取的学号是<jsp:getProperty name="student" property="id"/>
经过参数赋值后，获取的姓名是<jsp:getProperty name="student" property="name"/>
</body>
</html>
