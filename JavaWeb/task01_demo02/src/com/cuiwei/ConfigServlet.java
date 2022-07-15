package com.cuiwei;

import javax.servlet.*;
import java.io.IOException;
import java.util.Enumeration;

public class ConfigServlet implements Servlet {
    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        System.out.println("初始化操作执行了");
        System.out.println("Servlet的别名是：" + servletConfig.getServletName());

        //获取配置问文件中的初始化参数信息
        String username = servletConfig.getInitParameter("username");
        System.out.println("获取到的初始化用户名为：" + username);

        //获取所有配置参数的名称
        Enumeration<String> initParameterNames = servletConfig.getInitParameterNames();
        while(initParameterNames.hasMoreElements()){
            System.out.println("初始化参数名字为：" + initParameterNames.nextElement());
            System.out.println("*************");

            //获取Servlettext接口的引用
            ServletContext servletContext = servletConfig.getServletContext();
            System.out.println("接受到的servletContext为：" + servletContext);
        }
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {

    }
}
