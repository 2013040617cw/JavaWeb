<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/10
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现从内置对象中获取数据并打印</title>
</head>
<body>
<%
    pageContext.setAttribute("name1","pageContext对象中的值：zhangfei");
    request.setAttribute("name2","request对象中的属性值为：guanyu");
    session.setAttribute("name3","Session对象中的属性值为为：zhaoyun");
    application.setAttribute("name4","application对象中的属性值为：huangzhong");
%>
<%--使用JSP技术访问数据并打印--%>
<%="name1的属性值为：" + pageContext.getAttribute("name1")%><br>
<%="name2的属性值为：" + request.getAttribute("name2")%><br>
<%="name3的属性值为：" + session.getAttribute("name3")%><br>
<%="name4的属性值为：" + application.getAttribute("name4")%><br>

<%--使用EL技术访问数据并打印--%>
name1的数值为：${name1}<br>
name2的数值为：${name2}<br>
name3的数值为：${name3}<br>
name4的数值为：${name4}<br>

</body>
</html>
