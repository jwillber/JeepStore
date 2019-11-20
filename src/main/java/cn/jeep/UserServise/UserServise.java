package cn.jeep.UserServise;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import cn.jeep.UserBean.User;
import cn.jeep.UserBean.deluserGouCar;
import cn.jeep.UserBean.userAddDingDan;
import cn.jeep.UserBean.userDingDanShow;
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
	//删除旧购物车，插入新表
	Integer saveDingDan(List<userAddDingDan> arr,List<String> list, HttpServletRequest request);
	//跳转用户页面先显示所有订单
	List<userDingDanShow> selectDingDan(String uid);
	//查看正在进行的订单
	List<userDingDanShow> selectLongDingDan(String uid,String zhuangtai);
	//查看确认的订单
	List<userDingDanShow> selectOkDingDan(String uid,String zhuangtai);
	//修改订单未确认后订单
	Integer updateDingDan(String did);
	//修改用户密码
	Integer updatePwd(String upwd,String uid);
	//修改用户地址
	Integer updateUaddr(String uaddr,String uid);
}
