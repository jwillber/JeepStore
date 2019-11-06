package cn.jeep.UserMapper;

import java.util.List;

import cn.jeep.UserBean.User;


public interface UserMapper {
	//查询所有用户
	List<User> selectAllUserInfo();
	//登录
	User login(User user);
	//购物车ﳵ
	Integer gouCarCount(String uid);
}
