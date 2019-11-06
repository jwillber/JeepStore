package cn.jeep.UserServise;

import java.util.List;

import cn.jeep.UserBean.User;

public interface UserServise {
	//查询所有
	List<User> selectAllUserInfo();
	//登录
	User login(User user);
	//购物车ﳵ
	Integer gouCarCount(String uid);
}
