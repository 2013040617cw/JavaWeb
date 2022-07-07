package com.cuiwei.deno01;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.LogRecord;

public class loginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //1.实现对用户访问主页面的过滤操作，也就是只有用户登录后才能访问主页面，否则一律拦截
        //判断Session中是否存在用户名信息，没有则进行拦截
        HttpServletRequest httpServletRequest = (HttpServletRequest)servletRequest;
        HttpSession session = httpServletRequest.getSession();
        Object username = session.getAttribute("username");
        //获取路径
        String servletPath = httpServletRequest.getServletPath();

        if(null==username){
            //若没有登录，则回到登录页面
            servletRequest.getRequestDispatcher("login.jsp").forward(servletRequest,servletResponse);
        }
        else{
            //若登录则放行
            filterChain.doFilter(servletRequest,servletResponse);
        }

    }

    @Override
    public void destroy() {

    }
}
