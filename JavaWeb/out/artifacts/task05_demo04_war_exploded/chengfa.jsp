<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/24
  Time: 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现九九乘法表</title>
</head>
<body>
<table border="1">
<%
    for(int i =1;i<=9;i++){
%>
<tr>
   <%
       for(int j = 1;j<=i;j++){
   %>
    <td><%= i + "*" + j + "=" + i*j%></td>
    <%
        }
    %>
</tr>
<%
    }
%>
</table>
</body>
</html>
