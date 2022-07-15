package com.cuiwei;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloServlet04" , urlPatterns = "/hello04")
/*get和post方法的区别：get方法只有一个参数流，参数附在URL后，大小个数有严格限制且只能是字符串。
post方法的参数是通过另外的流传递的，不通过URL，所以传递的参数可以很大，也可以传递二进制数据，比如文件的上传。
 */
public class HelloServlet04 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Post请求方式......");
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Get请求方式......");

    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("原来使用注解可以如此潇洒");
        String method = req.getMethod();
        System.out.println("获取得请求方式为:" + method);
        if ("get".equalsIgnoreCase(method)) {
            doGet(req, resp);
        }

        if ("past".equalsIgnoreCase(method)) {
            doPost(req, resp);
        }
    }
}


