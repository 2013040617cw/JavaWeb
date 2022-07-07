<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: cuiwei
  Date: 2022/5/17
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加用户的执行操作</title>
</head>
<body>
<%

    try {

        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_news2019","root","123456");
        String uid =  request.getParameter("uid");
        String uname =  request.getParameter("uname");
        String upassword =  request.getParameter("upassword");
        String usex =  request.getParameter("usex");
        String uemail =  request.getParameter("uemail");
        if(uid!=null&&uname!=null&&upassword!=null&&usex!=null&&uemail!=null) {
            PreparedStatement pst2=conn.prepareStatement("select uid from t_user where uid = ?");
            pst2.setString(1,uid);
            ResultSet result2 = pst2.executeQuery();
            if(result2.next()){
                response.sendRedirect("addUser_fail.jsp");
            }
            else{
                PreparedStatement pst1=conn.prepareStatement("insert into t_user (uid,uname,upassword,usex,uemail,uregdate) value (?,?,?,?,?,?)");
                Date date = new java.util.Date();
                SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
                String format = sim.format(date);
                pst1.setString(1,uid);
                pst1.setString(2,uname);
                pst1.setString(3,upassword);
                pst1.setString(4,usex);
                pst1.setString(5,uemail);
                pst1.setString(6,format);
                int result1= pst1.executeUpdate();
                response.sendRedirect("mlogin_success.jsp");

            }
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }


%>
</body>
</html>
