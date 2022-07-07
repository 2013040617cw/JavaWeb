<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/5
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>response内置对象的使用</title>
</head>
<body>
<%
    //每隔一秒刷新一次
    response.addHeader("refresh","1");
    Date d1 = new Date();//获取当前时间
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//定义格式
    String format = sdf.format(d1);
%>
<%="当前实现为:" + format%>
</body>
</html>
