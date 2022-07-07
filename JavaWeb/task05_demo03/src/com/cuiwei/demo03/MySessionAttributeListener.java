package com.cuiwei.demo03;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionListener;

public class MySessionAttributeListener implements HttpSessionAttributeListener{
    @Override
    public void attributeAdded(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("增加了属性" + httpSessionBindingEvent.getName());
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("删除了属性" + httpSessionBindingEvent.getName());

    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("修改了属性" + httpSessionBindingEvent.getName());

    }
}
