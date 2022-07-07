<%@ page import="com.cuiwei.demo03.Student" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/20
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现Session对象中数据的钝化和活化操作</title>
</head>
<body>
<%
    //创建Student对象
    Student student = new Student();
    student.setName("cuiwie");
    student.setAge(15);
    //将数据放入session中
    session.setAttribute("student",student);

%>
</body>
</html>
