package cn.jeep.UserServise;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import cn.jeep.UserBean.User;
import cn.jeep.UserBean.deluserGouCar;
import cn.jeep.UserBean.userGouCar;
import cn.jeep.UserBean.userMoreDingDan;

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
	//删除一条购物车
	deluserGouCar deleteGouCar(String gid,HttpServletRequest request,deluserGouCar dGC);
	//查询多条即将生成的订单
	userMoreDingDan moreSelectDingDan(List<String> list,HttpServletRequest request);
}
