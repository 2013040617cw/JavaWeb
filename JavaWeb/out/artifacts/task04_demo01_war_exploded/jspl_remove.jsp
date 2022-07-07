<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/13
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现remove标签的使用</title>
</head>
<body>
<%---设置一个属性值并打印--%>
<c:set var="name" value="zhangfei"></c:set>
<c:out value="${name}"></c:out>
<hr>
<%----删除这个属性值后再打印--%>
<c:remove var="name" scope="page"></c:remove>
<c:out value="${name}" default="无名"></c:out>

</body>
</html>
