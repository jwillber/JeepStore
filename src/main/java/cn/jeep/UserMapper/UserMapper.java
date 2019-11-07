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
	//查询身份证是否重复
	Integer isIdCode(String ushenfen);
	//注册新用户
	Integer saveUserInfo(User user);
}
