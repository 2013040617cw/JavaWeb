<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/5
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>out内置对象的使用</title>
</head>
<body>
<%
    out.print("<h1>");
    out.print("hello world");
    out.print("<h1>");
    //out.close();
    int bufferSize = out.getBufferSize();
    System.out.println("缓冲区的大小为：" + bufferSize);
    int remaining = out.getRemaining();
    System.out.println("缓冲区未使用的大小为：" + remaining);
    System.out.println("缓冲区使用的字节数为：" + (bufferSize-remaining));

    out.clear();//清楚缓冲区，数据不会输出
    int remaining1 = out.getRemaining();
    System.out.println("缓冲区的剩余字节数为：" + remaining1);
%>
</body>
</html>
