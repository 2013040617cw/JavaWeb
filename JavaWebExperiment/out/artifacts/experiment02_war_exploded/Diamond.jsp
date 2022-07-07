<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/4/3
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实习*号组成菱形</title>
</head>
<body>
<%
    StringBuffer sb = new StringBuffer();
    int n = 10;
    for(int i = 1;i<=n;i++){
        for(int k = n;k>=i;k--){
            sb.append("&nbsp");
        }
        for(int j=1;j<=i;j++){
            sb.append("*");
        }
        sb.append("<br>");
    }
    for(int i = n-1;i>=1;i--){
        for(int k = i;k>=i;k--){
            sb.append("&nbsp");
        }
        for(int j = 1;j<=i;j++){
            sb.append("*");
        }
        sb.append("<br>");
    }

%>
<%=sb.toString()%>
</body>
</html>
