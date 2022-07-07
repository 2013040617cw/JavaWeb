package com.cuiwei.demo01;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class HelloTag extends SimpleTagSupport  {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void doTag() throws IOException {


        //获取输出流

        JspWriter out = this.getJspContext().getOut();

        //写入数据到浏览器
        out.write("自定义标签哦！！" + name);

        //关闭流对象
        out.close();
    }
}

