package com.cuiwei.demo03;

import jdk.swing.interop.SwingInterOpUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("创建");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("销毁");

    }
}
