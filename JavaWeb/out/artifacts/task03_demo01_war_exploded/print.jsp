<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/4
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现表格的绘制</title>
</head>
<body>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>age</td>
        <td>salary</td>
    </tr>
    <%
        for(int i =0;i<6;i++){
    %>
    <tr>
        <td><%=i%></td>
        <td><%=i%></td>
        <td><%=i%></td>
        <td><%=i%></td>
    </tr>
    <%
        }
    %>

</table>
</body>
</html>
