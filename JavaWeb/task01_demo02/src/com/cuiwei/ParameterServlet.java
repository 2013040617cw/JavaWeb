package com.cuiwei;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class ParameterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //6.设置请求信息中的编码方式为utf-8来解决乱码问题
        request.setCharacterEncoding("utf-8");
// 1.获取指定参数名称对应的参数值并打印
        String name = request.getParameter("name");
        System.out.println("获取到的姓名为：" + name);
        String[] hobbies = request.getParameterValues("hobby");
        System.out.print("获取到的爱好有：");
        for (String ts : hobbies) {
            System.out.print(ts + " ");
        }
        System.out.println();

        System.out.println("-------------------------------------------------------");
        // 2.获取所有参数的名称
        Enumeration<String> parameterNames = request.getParameterNames();
        System.out.print("获取到的所有参数名称为：");
        while (parameterNames.hasMoreElements()) {
            System.out.print(parameterNames.nextElement() + " ");
        }
        System.out.println();

        System.out.println("-------------------------------------------------------");

        //3.获取请求参数名和对应值得第二种方式
        Map<String, String[]> parameterMap = request.getParameterMap();
        //将Map集合中得所有键值对组成Set集合
        Set<Map.Entry<String, String[]>> entries = parameterMap.entrySet();
        //遍历Set集合
        for(Map.Entry<String , String[]> me : entries){
            System.out.println(me.getKey() + "对应的数值有" );
            for(String ts : me.getValue()){
                System.out.println(ts + " ");
            }
            System.out.println();
        }

        System.out.println("-------------------------------------------------------");
        //获取客户端得其他信息
        System.out.println("发送请求客户端的IP地址为：" + request.getRemoteAddr());
        System.out.println("发送请求客户端的端口号为:" + request.getRemotePort());
        System.out.println("请求资源的路径为：" + request.getRequestURI());
        System.out.println("请求资源的完整路径为：" + request.getRequestURL());
        System.out.println("请求方式为：" + request.getMethod());
        System.out.println("请求附带参数为" + request.getQueryString());
        System.out.println("请求的Servlet路径为" + request.getServletPath());



        System.out.println("-------------------------------------------------------");
        //5 . 向浏览器发送响应数据
        //获取响应数据默认编码方式
        String characterEncoding = response.getCharacterEncoding();
        System.out.println("服务器响应数据的默认编码方式为："  + characterEncoding);

        //设置服务器和浏览器的编码方式和文本类型
        response.setContentType("text/html;charset = UTF-8");

        PrintWriter writer = response.getWriter();
        //writer.write("hello");
        Random ra = new Random();
        int i = ra.nextInt(100) + 1;
        writer.write("<h1>" + i + "<h1>");
        System.out.println("服务器传送成功");
        writer.close();




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
