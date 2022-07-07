package com.cuiwei.demo02;

import javax.servlet.*;
import java.io.IOException;
import java.util.Enumeration;

public class LifeFilter implements Filter {
    public LifeFilter(){
        System.out.println("构造方法正在运行");
    }
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("初始化操作正在火热进行中");
        System.out.println("获取到的过滤器的名称为" + filterConfig.getFilterName());
        String username = filterConfig.getInitParameter("username");
        System.out.println("获取到的初始化参数值为：" + username);
        Enumeration<String> initParameterNames = filterConfig.getInitParameterNames();
        while( initParameterNames.hasMoreElements()){
            System.out.println("获取到的参数名称为：" + initParameterNames.nextElement());
        }
        ServletContext servletContext = filterConfig.getServletContext();
        System.out.println("获取到的Servlet" + servletContext);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("阻拦一切不合理的访问");
        filterChain.doFilter(servletRequest,servletResponse);

    }

    @Override
    public void destroy() {
        System.out.println("销毁操作执行完毕");

    }
}
