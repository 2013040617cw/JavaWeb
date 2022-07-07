package nuc.ss.test;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "InitParamServlet")
public class InitParamServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private String initParam = null; // 用于保存初始化参数

    public void init(ServletConfig config) throws ServletException {
        this.initParam = config.getInitParameter("url"); // 读取初始化参数
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        out.println("初始化参数：" + this.initParam);
        out.close();

      


    }
}
