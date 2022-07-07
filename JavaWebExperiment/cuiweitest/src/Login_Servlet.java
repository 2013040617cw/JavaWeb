import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Login_Servlet",urlPatterns = "/login")
public class Login_Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String username = "cuiwei";
            String password = "2013040617";
            String adminname = "admin2022";
            String adminpassword = "87654321";
        String username1 = request.getParameter("username");
        String shenfen = request.getParameter("shenfen");
        String password1 = request.getParameter("password");
        if(username.equals(username1)&&password.equals(password1)&&shenfen.equals("普通用户")){
            response.sendRedirect("login_success.jsp");
        }
        if(adminname.equals(username1)&&adminpassword.equals(password1)&&shenfen.equals("管理员")){
            response.sendRedirect("login_success.jsp");
        }
        else {
            response.sendRedirect("login_failure.jsp");
        }

    }
}
