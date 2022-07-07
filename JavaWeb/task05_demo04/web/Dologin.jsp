<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/24
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    session.setAttribute("username",username);
    if("a".equals(username)){
        %>
<jsp:forward page="chenggong.jsp">
    <jsp:param name="usm" value=""/>
</jsp:forward>

<%
    }
    else{

%>
<jsp:forward page="shibai.jsp"></jsp:forward>
<%
    }
%>

</body>
</html>
