<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/3/4
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试变量的声明和打印</title>
    <%!
        int ia;//这是一个全局变量
        public void show(){
            System.out.println("这是全局变量");
        }
        public class Myclass{
            //类中直接一个{}叫构造块
            {
                System.out.println("这是一个全局类");
            }
        }
    %>

    <%
        int ib = 20; //这是一个局部变量
        for(int i =0;i<3;i++){
            System.out.println("随便放入JAVA的代码吧");
        }
    %>
</head>
<body>
<%=ia+1%>  <%--1--%>
<%=ib%><%--20--%>
<%="我就暂时写到这里吧"%> <%--我就暂时写到这里吧--%>
</body>
</html>
