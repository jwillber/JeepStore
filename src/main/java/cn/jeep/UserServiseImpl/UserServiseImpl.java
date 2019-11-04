package cn.jeep.UserServiseImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jeep.UserBean.User;
import cn.jeep.UserMapper.UserMapper;
import cn.jeep.UserServise.UserServise;


@Service
public class UserServiseImpl implements UserServise{

	@Autowired
	UserMapper userMapper;
	
	public List<User> selectAllUserInfo() {
		// TODO Auto-generated method stub
		return userMapper.selectAllUserInfo();
	}
	
	//登录
	public User login(User user) {
		// TODO Auto-generated method stub
		
		return userMapper.login(user);
	}
	
	//查询登陆用户的购物车
	public Integer gouCarCount(String uid) {
		// TODO Auto-generated method stub
		return userMapper.gouCarCount(uid);
	}
	
	
	
}
