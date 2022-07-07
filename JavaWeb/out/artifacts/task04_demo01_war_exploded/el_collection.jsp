<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/13
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实现集合中数据对象的获取和打印</title>
</head>
<body>
<%
    //添加数据内容
    List<String> list = new LinkedList<>();
    list.add("two");
    list.add("one");
    list.add("three");
    //将集合放入指定的内置对象中
    pageContext.setAttribute("list",list);

    //准备一个Map集合
    Map<String,Integer> map = new HashMap<>();
    map.put("one",1);
    map.put("two",2);
    map.put("th.ree",3);
    //将指定的对象放入内置对象中
    pageContext.setAttribute("map",map);

%>
<%--使用EL表达式实现集合中数据的获取--%>
集合下标为0的元素是：${list[0]}<br>
集合下标为1的元素是：${list[1]}<br>
集合下标为2的元素是：${list[2]}<br>
<%--使用El表达式实现Map集合中数据内容的获取   不支持下标--%>
整个Map集合中的元素有：${map}
名字为Three的值为:${map["th.ree"]}

</body>
</html>
