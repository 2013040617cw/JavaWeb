package com.cuiwei.demo03.servlet.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "SessionServlet",urlPatterns = "/session")
public class SessionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.调用getSession对象或者创建Session对象
        HttpSession session = request.getSession();
        //2.判断该Session对象是否为新对象
        System.out.println(session.isNew()?"新创建的Session对象":"已有的Session对象");
        //3.获取id
        String id = session.getId();
        System.out.println("Session的编号为：" + id);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);

    }
}
