package com.dao;

import com.beans.UserAdmin;
import com.beans.UserBean;
import com.conn.Conn;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDaoImpl implements UserDao{
    @Override
    public boolean Select1(UserAdmin admin) throws Exception {
        boolean flag = false;
        Conn jdbc = new Conn();
        Connection conn = jdbc.getConnection();
        String sql = "select * from t_manager where mid = ? and mpassword = ?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setString(1,admin.getMid());
        pst.setString(2,admin.getMpassword());
        ResultSet resultSet = pst.executeQuery();
        if(resultSet.next()){
            flag = true;
        }
        else{
            flag = false;
        }
        return flag;
    }

    @Override
    public boolean  Insert(UserBean user)  throws Exception {
        boolean i ;
        Conn jdbc = new Conn();
        Connection conn = jdbc.getConnection();
        String sql = "insert into t_user(uid,uname,upassword,usex,uemail,uregdate) values(?,?,?,?,?,?)";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setString(1, user.getUid());
        pst.setString(2, user.getUname());
        pst.setString(3, user.getUpassword());
        pst.setString(4,user.getUsex());
        pst.setString(5,user.getUemail());
        pst.setString(6, "2022-05-22");
        pst.executeUpdate();
        i = true;
        return i;
    }



    @Override
    public Boolean Delete(UserBean user)  throws Exception{
        boolean flag = false;
        Conn jdbc = new Conn();
        Connection conn = jdbc.getConnection();
        String sql = "delete  from t_user where uid = ?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setString(1,user.getUid());
        pst.executeUpdate();
        flag = true;
        return flag;
    }

    @Override
    public Boolean Update(UserBean user) throws  Exception {
        boolean flag = false;
        Conn jdbc = new Conn();
        Connection conn = jdbc.getConnection();
        String sql = "update t_user set  uname=? ,upassword=? ,usex=?,uemail=? ,uregdate = ? where uid= ?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setString(1,user.getUname());
        pst.setString(2,user.getUpassword());
        pst.setString(3,user.getUsex());
        pst.setString(4,user.getUemail());
        pst.setString(5,"2022-05-22");
        pst.setString(6,user.getUid());
        pst.executeUpdate();
        flag = true;
       return flag;
    }

    @Override
    public ResultSet Select2() throws Exception {
        Conn jdbc = new Conn();
        Connection conn = jdbc.getConnection();
        UserBean user = new UserBean();
        String sql = "select * from t_user";
        PreparedStatement pst = conn.prepareStatement(sql);
        ResultSet resultSet = pst.executeQuery();
        return resultSet;

    }

    @Override
    public ResultSet Select3() throws Exception {
        Conn jdbc = new Conn();
        Connection conn = jdbc.getConnection();
        UserBean user = new UserBean();
        String sql = "select * from t_user where uid = ?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setString(1, user.getUid());
        ResultSet resultSet = pst.executeQuery();
        return resultSet;
    }


}


