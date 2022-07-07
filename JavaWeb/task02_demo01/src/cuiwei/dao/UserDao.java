package cuiwei.dao;

import cuiwei.Model.User;
import cuiwei.util.dBUTIL;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserDao {
    public int createuser(User user) throws Exception{
        Connection con = null;
        PreparedStatement p = null;
        try {
            //1.获取连接
             con = dBUTIL.getConnection();
            //2.准备Sql语句
            String sql = "insert into t_user values(null,?,?)";
            //3.获取PrepareStatement类型的引用
          p = con.prepareStatement(sql);
            //4.向问号所占的位置设置数据
            p.setString(1,user.getUserName());
            p.setString(2,user.getPassword());
            //5.执行Sql语句
            int row = p.executeUpdate();
            return row; //执行成功
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //6.关闭资源
            dBUTIL.closeConnection(con,p);
        }
        return 0;//执行失败
    }

}
