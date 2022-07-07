<%@ page import="java.util.Date" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/15
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现格式化标签的使用</title>
</head>
<body>
 <%
     Date date = new Date();
     pageContext.setAttribute("date" , date);
 %>
当前系统时间为：${date};
<hr>
<%------格式化标签-----%>
<fmt:formatDate value="${date}"  pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
</body>
</html>
