<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/13
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>常用运算符的使用</title>
</head>
<body>
<%
    //通过内置对象设置属性的方式来准备操作数
    request.setAttribute("ia",53);
    request.setAttribute("ib",2);
    request.setAttribute("ic",true);
    request.setAttribute("id",false);
%>
<%--实现上述所有操作的获取和打印---%>
ia的值为：${ia}<br>
ib的值为：${ib}<br>
ic的值为：${ic}<br>
id的值为:${id}<br>
<hr/>
ia+ib的值为：${ia+ib}<br>
ia-ib的值为：${ia-ib}<br>
ia*ib的值为：${ia*ib}<br>
ia/ib的值为：${ia/ib}<br>
ia%ib的值为：${ia%ib}<br>

<%--关系运算符--%>
ia大于ib的结果为：${ia>ib}<br>
ia大于等于ib的结果为：${ia>=ib}<br>
ia小于ib的结果为：${ia<ib}<br>
ia小于等于ib的结果为：${ia<=ib}<br>
ia等于ib的结果为：${ia==ib}<br>
ia不等于ib的结果：${ia!=ib}<br>

<%---实现逻辑运算符的使用---%>
ic并且id的结果为：${ic&&id}<br>


<%-------%>
<%
    String str1 = null;
    String str2 = "";
    String str3 = "hello";

    List<String> list = new LinkedList<>();
    List<Integer> list1 = Arrays.asList(11,22,33,44,55);
    request.setAttribute("str1",str1);
    request.setAttribute("str2",str2);
    request.setAttribute("str3",str3);
    request.setAttribute("list",list);
    request.setAttribute("list1",list1);
%>

    <%-----实现条件运算符和验证运算符的使用---%>
ia和ib之间的最大值为：${ia>ib?ia:ib}<br>
判断是否为为空的结果为：${empty str1}<br>
判断是否为为空的结果为：${empty str2}<br>
判断是否为为空的结果为：${empty str3}<br>
判断是否为为空的结果为：${empty list}<br>
判断是否为为空的结果为：${empty list2}<br>



</body>
</html>
