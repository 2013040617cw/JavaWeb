<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/15
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>常用函数的使用</title>
</head>
<body>
<%
    pageContext.setAttribute("var","HelloWorld");
%>
原始字符串为：${var} <br>
判断该字符串是否包含指定字符串的结果为：${fn:contains(var,"Hello")}<br>
将字符串中所有字符串转换为大写的结果：${fn:toUpperCase(var)}<br>
将字符串中所有字符转换为小写的结果为：${fn:toLowerCase(var)}<br>
</body>
</html>
