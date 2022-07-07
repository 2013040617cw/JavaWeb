package com.cuiwei.demo03.servlet.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CookieServlet4",urlPatterns = "/cookie4")
public class CookieServlet4 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.创建cookie信息
        Cookie cookie = new Cookie("name","liubei");

        //2.获取cookie信息的默认使用期限
        int maxAge = cookie.getMaxAge();
        System.out.println("该cookie的默认使用期限是：" + maxAge);

        //3.修改Cookie信息的使用期限
        cookie.setMaxAge(0);


        //4.添加到响应的信息中
        response.addCookie(cookie);
        System.out.println("设置Cookie的声明周期成功");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
this.doPost(request, response);
    }
}
