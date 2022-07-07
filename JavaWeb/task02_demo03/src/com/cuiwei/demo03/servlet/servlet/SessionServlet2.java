package com.cuiwei.demo03.servlet.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet(name = "SessionServlet2",urlPatterns = "/session2")
public class SessionServlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        //1.设置属性名和属性值
        session.setAttribute("name","machao");
        //2.获取指定属性名对应的属性值
        System.out.println("获取到的属性值为：" + session.getAttribute("name")); //machao
        //3.删除指定的属性名
        session.removeAttribute("name");
        //4.获取指定的属性名对应的属性值
        System.out.println("获取到的属性值为：" + session.getAttribute("name"));//null

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);

    }
}
