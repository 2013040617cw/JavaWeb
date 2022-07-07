package tset;

import Service.UserService;
import dao.UserDao;
import dao.UserDaoImp;
import model.User;

public class UserServiceTest {
    public static void main(String[] args) {
        UserDao uderdao= new UserDaoImp();
        UserService userService = new UserService();
        User admin = userService.userLoginService(new User("admin","123456"));
        System.out.println("找到的数据为" + admin);

    }
}
