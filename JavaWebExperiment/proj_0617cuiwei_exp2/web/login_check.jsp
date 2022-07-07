<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2022/4/3
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>验证页面</title>
</head>
<body>
<%!
    //设置模拟数据库
    public static String[] userids={"cuiwei","lihuikang","tianbaichuan"};
    public static String[] usernames={"崔巍","李慧慷","tbc"};
    public static String[] userpws={"123","456","789"};
    //使用此方法判断是否模拟数据库中是否有这个用户
     public String check(String userid, String userpw){
        int i;
        for(i=0;i<userids.length; i++){
            if(userids[i].equals(userid)){
                break;
            }
        }
        if(i<userids.length){
            if(userpws[i].equals(userpw)){
                return usernames[i];
            }else{
                return "";
            }
        }else{
            return "";
        }
    }
%>
<%
    //防止出现乱码
    request.setCharacterEncoding("UTF-8");
    //获取参数id的值
    String id = request.getParameter("id");
    //获取参数password的值
    String password = request.getParameter("password");
    //获取是否记住
    String remenber = request.getParameter("remenber");
    String name;
    Cookie[] cookies;
    if((!(name=check(id,password)).equals(""))){
        cookies = request.getCookies();
        int i;
        //Cookie还没有创建
        boolean cookies_flag = false;
        if(cookies != null){
            for(i=0; i<cookies.length; i++){
                if("Cookie2019".equals(cookies[i].getName())){
                    break;
                }
            }
            if(i<cookies.length){
                cookies_flag = false;
            }
            else{
                cookies_flag = true;
            }
        }
        else{
            cookies_flag = true;
        }
     //新的Cookie为了存储记住的用户
        Cookie cookie;

        if(remenber != null){
            if(cookies_flag){
                cookie = new Cookie("Cookie2019", id+"#"+password);
                cookie.setMaxAge(45);
                response.addCookie(cookie);
            }
        }
        else{
            if(!cookies_flag){
                cookie = new Cookie("Cookie2019", id+"#"+password);
                //使Cookie直接失效
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        }

        session.setAttribute("username", name);
        session.setMaxInactiveInterval(60);
        response.sendRedirect("login_success.jsp");
        System.out.println(session.getAttribute("username"));

    }
    else{
        //登录失败，跳转到失败页
        response.sendRedirect("login_failure.jsp");
    }
%>

</body>
</html>
