package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 数据库连接
 */
public class Conn {

        public Connection getConnection()  throws  Exception{
            Connection connection = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("加载成功！");
                String url = "jdbc:mysql://localhost:3306/db_news2019?useUnicode=true&characterEncoding=utf-8";
                String username = "root";
                String password = "123456";
                connection = DriverManager.getConnection(url, username, password);
            } catch (ClassNotFoundException e) {

                e.printStackTrace();
                System.out.println("加载失败！驱动类没有找到！");

            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("数据库连接失败！请检查数据库名以及用户帐号！");
            }


            return connection;
        }
}
