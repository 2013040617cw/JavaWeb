<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/13
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现循环标签的使用</title>
</head>
<body>
<%
    //准备一个数组，并初始化
    String [] arr = {"11","22","33","44","55"};
    pageContext.setAttribute("arr",arr);
%>
<%-----使用循环标签遍历数组中的所有元素-----%>
<c:forEach var="ts" items="${arr}">
    <c:out value="${ts}"></c:out>
</c:forEach>
<hr>
<%-----跳跃性遍历-----%>
<c:forEach var="ts1" items="${arr}" step="2">
    <c:out value="${ts1}"></c:out>
</c:forEach>
<hr>

<%-----指定起始和结尾位置   从下标1开始，到3结束  包含1和3------%>
<c:forEach var="ts2" items="${arr}" begin="1" end="3">
    <c:out value="${ts2}"></c:out>
</c:forEach>
</body>
</html>
