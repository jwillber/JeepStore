package cn.jeep.UserServiseImpl;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jeep.UserBean.User;
import cn.jeep.UserBean.deluserGouCar;
import cn.jeep.UserBean.userGouCar;
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
	//加入购物车
	public Integer saveGouCar(userGouCar uGC) {
		// TODO Auto-generated method stub
		userMapper.saveGouCar(uGC);
		int row = userMapper.gouCarCount(uGC.getUid());
		return row;
	}
	//查看购物车内容
	public List<userGouCar> goGouCar(String uid) {
		// TODO Auto-generated method stub
		return userMapper.goGouCar(uid);
	}

	public deluserGouCar deleteGouCar(String gid,HttpServletRequest request,deluserGouCar dGC) {
		// TODO Auto-generated method stub
		userMapper.deleteGouCar(gid);
		List<userGouCar> goucarArr = userMapper.goGouCar((String)request.getSession().getAttribute("uid"));
		dGC = new deluserGouCar();
		dGC.setGoucarArr(goucarArr);
		//查询条数
		int row = userMapper.gouCarCount((String)request.getSession().getAttribute("uid"));
		request.getSession().setAttribute("goucarcount",row);
		dGC.setCount(row);
		return dGC;
	}

	
}





