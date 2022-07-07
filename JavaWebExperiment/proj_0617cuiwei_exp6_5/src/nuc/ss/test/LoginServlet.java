package nuc.ss.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String username = "cuiwei";
            String password = "123456";
            String username1 = request.getParameter("username");
            String password1 = request.getParameter("password");

            if(username.equals(username1)&&password.equals(password1)){
              Cookie cookie = new Cookie("username1",username1);
            response.sendRedirect("login_success.jsp");
        } else{
            response.sendRedirect("login_fail.jsp");
        }
    }
}
