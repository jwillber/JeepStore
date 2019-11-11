package cn.jeep.UserServise;

import java.util.List;

import cn.jeep.UserBean.User;
import cn.jeep.UserBean.userGouCar;

public interface UserServise {
	//查询所有
	List<User> selectAllUserInfo();
	//登录
	User login(User user);
	//购物车ﳵ
	Integer gouCarCount(String uid);
	//查询身份证是否重复
	Integer isIdCode(String ushenfen);
	//注册新用户
	Integer saveUserInfo(User user);
	//用户购车加入商品
	Integer saveGouCar(userGouCar uGC);
	//查看购物车商品
	List<userGouCar> goGouCar(String uid);
}
