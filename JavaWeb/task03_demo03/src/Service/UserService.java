package Service;

import dao.UserDao;
import factory.UserDaoFactory;
import model.User;


public class UserService {
    /**
     * 自定义成员方法实现根据参数指定的User对象来调用DAO层实现登录功能
     * @param user
     * @return
     */
    public UserDao userdao;

    public UserService() {
        this.userdao = UserDaoFactory.getUserDao();
    }

    public User userLoginService(User user){
        return userdao.userLogin(user);
    }
}
