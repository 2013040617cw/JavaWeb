package com.cuiwei.deno01;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet" , urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1接受前端页面输入的用户名和密码
        String username = request.getParameter("username");
        System.out.println("接收到的用户名为" +username );
        String password = request.getParameter("password");
        System.out.println("接收到的密码为：" + password);
        //2.使用固定的用户名和密码进行登录的校验
        if("admin".equals(username) && "123456".equals(password)){
            System.out.println("登录成功，欢迎使用");
            //存储用户信息
            request.getSession().setAttribute("username",username);
            response.sendRedirect("main.jsp");//重定向技术
        }
        else{
            System.out.println("用户名或者密码错误");
            request.getRequestDispatcher("login.jsp").forward(request,response);//转发技术
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
this.doPost(request, response);
    }
}
