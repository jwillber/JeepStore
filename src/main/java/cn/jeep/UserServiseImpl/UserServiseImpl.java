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
	
	//购物车ﳵ
	public Integer gouCarCount(String uid) {
		// TODO Auto-generated method stub
		return userMapper.gouCarCount(uid);
	}
	
	//查询身份证是否重复
	public Integer isIdCode(String ushenfen) {
		// TODO Auto-generated method stub
		return userMapper.isIdCode(ushenfen);
	}

	//注册新用户
	public Integer saveUserInfo(User user) {
		// TODO Auto-generated method stub
		Integer res = userMapper.saveUserInfo(user);
		return res;
	}
	
	
	
}





