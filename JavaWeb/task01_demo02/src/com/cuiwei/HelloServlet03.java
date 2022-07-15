package com.cuiwei;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HelloServlet03  extends HttpServlet {
    public HelloServlet03() {
        System.out.println("构造方法调用了");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("这是采用HttpServlet方式配置，以后也推荐用这个方式");
    }

    @Override
    public void destroy() {
        System.out.println("销毁操作开始了");
    }

    @Override
    public void init() throws ServletException {
        System.out.println("初始化操作开始了");
    }
}
