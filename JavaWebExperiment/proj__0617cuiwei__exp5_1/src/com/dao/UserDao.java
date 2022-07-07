package com.dao;

import com.beans.UserAdmin;
import com.beans.UserBean;

import java.sql.ResultSet;

public interface UserDao {
    public boolean Select1(UserAdmin admin) throws Exception;
    public boolean Insert(UserBean user) throws Exception;
    public Boolean Delete(UserBean User) throws  Exception;
    public Boolean Update(UserBean user) throws  Exception;
    public ResultSet Select2()throws Exception;
    public ResultSet Select3() throws  Exception;
}
