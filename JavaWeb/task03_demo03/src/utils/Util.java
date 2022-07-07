package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Util {
    private static String jdbcName; //用于描述驱动信息
    private static String dbUrl; //用于描述URL信息
    private static String dbUsername; //用于描述用户名信息
    private static String dbPassword;//用户描述密码信息

    //进行成员的初始化操作
    static {
        jdbcName = "com.mysql.jdbc.Driver";
        dbUrl = "jdbc:mysql://localhost:3306/db_web";
        dbUsername = "root";
        dbPassword = "123456";
        try {
            Class.forName(jdbcName);
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }
    }

    /**
     * 获取连接
     * @return
     * @throws Exception
     */
    public static Connection getConnection() throws Exception{
        Connection con  = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
        return con;
    }

    /**
     * 关闭连接
     * @param con
     * @throws Exception
     */
    public static  void closeResource(Connection con, PreparedStatement p) throws Exception{
        if(null!=con){
            con.close();
        }
        if(null!=p){
            p.close();
        }
    }
}