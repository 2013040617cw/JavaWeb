<%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/6/24
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <form method="get" action="/login">

      <table>
        <tr>
          <td>用户名：</td>
          <td colspan="2"><input type="text" name="username"></td>
        </tr>
        <tr>
          <td>用户类型：</td>
          <td> 普通用户<input type="radio" name="shenfen"></td>
          <td> 管理员<input type="radio" name="shenfen"></td>
        </tr>
        <tr>
          <td>密码：</td>
          <td colspan="2"><input type="text" name="password"></td>
        </tr>
        <tr>
          <td colspan="3"><input type="submit" value="提交"></td>
        </tr>
      </table>


  </form>
  </body>
</html>
