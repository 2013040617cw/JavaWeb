package com.cuiwei.demo02.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ThreadServlet",urlPatterns = "/thread")
public class ThreadServlet extends HttpServlet {
    private String name;//准备一个成员变量

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        synchronized (this) {
            //1.获取request对象中名字为name的参数值，并赋值给成员变量
            String name = request.getParameter("name");
            System.out.println("获取到的name数值为：" + name);
            //2.睡眠5s
            try {
                Thread.sleep(5000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            //3.使用打印流，将name数值发送给浏览器
            PrintWriter writer = response.getWriter();
            writer.write("<h1>" + name + "<h1>");

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
this.doPost(request, response);
    }
}
