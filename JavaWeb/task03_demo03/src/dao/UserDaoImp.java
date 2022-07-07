package dao;

import model.User;
import utils.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDaoImp implements UserDao {

    @Override
    public User userLogin(User user) {
        //获取数据库连接
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = Util.getConnection();
            //准备Sql语句
            String sql = "select * from t_user where userNmae = ?and password = ?";
            //执行Sql语句并获取结果并返回

            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassword());
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                User tu = new User(resultSet.getString("userName"), resultSet.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //释放所有资源

            try {
                Util.closeResource(connection, preparedStatement);
                if (null != resultSet) {
                    resultSet.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;//表示查找失败
    }
}
