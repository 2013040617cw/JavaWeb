package com.cuiwei.demo03.servlet.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CookieServlet3",urlPatterns = "/cookie3")
public class CookieServlet3 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取客户端发来的cookie信息并打印
        Cookie[] cookies = request.getCookies();
        for(Cookie tc :cookies){
           //当获取到的Cookie对象名字为name时，将对应的数值修改为guanyu并添加到响应中
            if("name".equals(tc.getName())){
                tc.setValue("guanyu");
                response.addCookie(tc);
                break;
            }
        }

        System.out.println("修改Cookie成功！");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);

    }
}
