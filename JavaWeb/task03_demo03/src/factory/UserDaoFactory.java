package factory;

import dao.UserDao;
import dao.UserDaoImp;

public class UserDaoFactory {
    public static UserDao getUserDao(){
        return new UserDaoImp(); //不能直接调用new UserDao  因为他是一个接口
    }
}
