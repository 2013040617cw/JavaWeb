<%@ page import="com.cuiwei.demo02.Student" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/6
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaBean组件的使用</title>
</head>
<body>
<!---表示创建一个Student类型的对象由student引用负责记录，有效范围为当前页面--->
<jsp:useBean id="student" scope="page" class="com.cuiwei.demo02.Student"/>
<!-  表示将student中对象名字为id的属性值设置为1001->
<jsp:setProperty name="student" property="id" value="1002"/>
<jsp:setProperty name="student" property="name" value = "guanyu"/>
   <%-- Student student1 = new Student();
    student1.setId(1001);
    student1.setName("zhaoyun");--%>

%>
<%--<%="获取到的学号为：" + student.getId()%>
<%="获取到的姓名为：" + student.getName()%>--%>
学号是：<jsp:getProperty name="student" property="id"/>
姓名是：<jsp:getProperty name="student" property="name"/>


</body>
</html>


