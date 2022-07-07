<%@page contentType="text/html; charset = utf-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>实现一个简单的登录功能</title>
</head>
<body>
<form action="login" method = "post">
  用户名：<input type = "text" name="userName"> <br>
  密码：&nbsp;&nbsp;&nbsp;&nbsp;；<input type = "text" name="password"> <br>
  <span style = "color:red"><%=request.getAttribute("error")==null?"":request.getAttribute("errord")%></span>
  <input type = "submit" value = "登录"> <br>

</form>
</body>
</html>