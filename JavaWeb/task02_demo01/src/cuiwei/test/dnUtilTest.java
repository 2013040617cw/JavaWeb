package cuiwei.test;

import cuiwei.util.dBUTIL;

import java.sql.Connection;
import java.sql.SQLException;

public class dnUtilTest {
    public static void main(String[] args) {
        Connection connection = null;
        try {
             connection = dBUTIL.getConnection();
            System.out.println("连接数据库成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
       /* finally {
            try {
                dBUTIL.closeConnection(connection);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }*/



    }
}
