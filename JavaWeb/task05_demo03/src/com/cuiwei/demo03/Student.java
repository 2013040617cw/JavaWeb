package com.cuiwei.demo03;

import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionEvent;
import java.io.Serializable;

public class Student implements Serializable , HttpSessionActivationListener {
    private String name;
    private int age;

    public Student() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }

    @Override
    public void sessionWillPassivate(HttpSessionEvent httpSessionEvent) {
        System.out.println("实行了钝化操作" + httpSessionEvent.getSession());
    }

    @Override
    public void sessionDidActivate(HttpSessionEvent httpSessionEvent) {
        System.out.println("活化操作" );

    }
}
