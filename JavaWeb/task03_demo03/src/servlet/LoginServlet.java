package servlet;

import Service.UserService;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        System.out.println("获取到用户名为：" + userName);
        String password = request.getParameter("password");
        System.out.println("获取到的密码为：" + password);
        //创建userService数据的对象去实现数据的校验功能
        UserService userservice = new UserService();
        User user = userservice.userLoginService(new User(userName, password));
        if(null == user){
            System.out.println("登陆失败，用户名或者密码错误");
            request.setAttribute("error","登录失败");
            //实现服务器跳转  共享request和response
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
            requestDispatcher.forward(request,response);
        }
        else{
            System.out.println("登录成功，欢迎使用");
            //将登陆成功的用户信息放入Session对象实现多个请求的共享
            request.getSession().setAttribute("user",user);
            //实现客户端跳转
            response.sendRedirect("main.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
this.doPost(request, response);
    }
}
