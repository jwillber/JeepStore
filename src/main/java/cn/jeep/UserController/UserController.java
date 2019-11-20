package cn.jeep.UserController;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import cn.jeep.UserBean.User;
import cn.jeep.UserBean.deluserGouCar;
import cn.jeep.UserBean.userAddDingDan;
import cn.jeep.UserBean.userDingDanShow;
import cn.jeep.UserBean.userGouCar;
import cn.jeep.UserBean.userMoreDingDan;
import cn.jeep.UserServise.UserServise;
import cn.jeep.Util.randomId;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserServise userServise;
	
	
	//查询所有用户
	@RequestMapping("/AllUser")
	public ModelAndView selectAllUserInfo(ModelAndView model){
		List<User> list = userServise.selectAllUserInfo();
		System.out.println(list);
		model.addObject("userinfo",list);
		model.setViewName("test1");
		return model;
	}
	
	//登录
	@RequestMapping("/login")
	public ModelAndView login(User user,ModelAndView model,HttpServletRequest request){
		System.out.println(user);
		User oneUser = userServise.login(user);
		if(oneUser!=null){
			request.getSession().setAttribute("uid", oneUser.getUid());
			request.getSession().setAttribute("goucarcount", userServise.gouCarCount(oneUser.getUid()));
			model.setViewName("jeepstore");
		}else{
			model.addObject("logininfo", "账号或密码不正确");
			model.setViewName("login");
		}
		return model;
	}
	
	//退出登录
	@RequestMapping("/outlogin")
	public String outlogin(HttpServletRequest request){
		request.getSession().removeAttribute("uid");
		request.getSession().removeAttribute("goucarcount");
		return "redirect:/jeepstore.jsp";
	}
	
	
	//查询身份证是否重复
	@RequestMapping("/isIdCode")
	@ResponseBody
	public Integer isIdCode(@Param("ushenfen")String ushenfen){
		Integer res = userServise.isIdCode(ushenfen);
		return res;
	}
	
	//用户注册
	@RequestMapping("/newUserInfo")
	public ModelAndView saveUserInfo(User user,ModelAndView model){
		//封装自动生成的账号uid
		String uid = randomId.getUid();
		user.setUid(uid);
		//封装唯一的uoid
		user.setUoid(UUID.randomUUID().toString());
		user.setZt(0);
		System.out.println(user.toString());
		Integer res = userServise.saveUserInfo(user);
		if(res == 1){
			model.addObject("uid", uid);
			model.setViewName("regisert2");
		}
		return model;
	}
	//添加购物车
	@RequestMapping("/gouCar")
	@ResponseBody
	public Integer gouCar(userGouCar uGC,HttpServletRequest request){
		uGC.setUid((String)request.getSession().getAttribute("uid"));
		int row = userServise.saveGouCar(uGC);
		System.out.println(uGC.toString()+"---------------");
		request.getSession().setAttribute("goucarcount", row);
		return row;
	}
	
	//跳转购物车页面
	@RequestMapping("/goGouCar")
	public ModelAndView goGouCar(ModelAndView model,@Param("uid")String uid){
		model.addObject("goucar", userServise.goGouCar(uid));
		model.setViewName("mycar");
		return model;
	}
	
	//删除1购物车内容
	@RequestMapping("/delGouCar")
	@ResponseBody
	public deluserGouCar delGouCar(@Param("gid")String gid,HttpServletRequest request,deluserGouCar dGC){
		dGC = userServise.deleteGouCar(gid,request,dGC);
		return dGC;
	}
	
	//把选中的商品生成订单，但是不插入订单库，
	@RequestMapping("/dingDan")
	public ModelAndView dingDan(ModelAndView model,@Param("arr")String arr,HttpServletRequest request){
		System.out.println(arr);
		List<String> list = new ArrayList<String>();
		String[] gid= arr.split(",");
		for(int i=0;i<gid.length;i++){
			list.add(gid[i]);
		}
		userMoreDingDan userDD = userServise.moreSelectDingDan(list,request);
		request.getSession().setAttribute("moredingdan", userDD);
		model.addObject("rmoredingdan", userDD);
		model.setViewName("moneycar2");
		return model;
	}
	
	
	//此方法用户删了购物车信息，插入了订单
	@RequestMapping("/addDingDan")
	public ModelAndView addDingDan(ModelAndView model,HttpServletRequest request){
		HttpSession session = request.getSession();
		userMoreDingDan userDD = (userMoreDingDan) session.getAttribute("moredingdan");
		List<userGouCar> morearr = userDD.getMorearr();
		List<userAddDingDan> arr = new ArrayList<userAddDingDan>();
		userAddDingDan userdd = new userAddDingDan();
		SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd");
		List<String> list = new ArrayList<String>();
		for(int i=0;i<morearr.size();i++){
			userdd.setUid(morearr.get(i).getUid());
			userdd.setCarimg(morearr.get(i).getCarimg());
			userdd.setCarname(morearr.get(i).getCarname());
			userdd.setColorname(morearr.get(i).getColorname());
			userdd.setJiage("8.8");
			userdd.setPname(morearr.get(i).getPname());
			userdd.setShijian(s.format(new Date()));
			userdd.setUaddr(userDD.getUaddr());
			userdd.setUname(userDD.getUname());
			userdd.setZhuangtai(0);
			userdd.setUtell(userDD.getUtell());
			arr.add(userdd);
			list.add(morearr.get(i).getGid());
		}
		System.out.println(arr+"----------------------------------------------------------");
		System.out.println(list+"----------------------------------------------------------");
		userServise.saveDingDan(arr, list,request);
		model.setViewName("dingdanYes");
		return model;
	}
	
	//查询用户所有订单
	@RequestMapping("/lookdingdan")
	public ModelAndView lookDingDan(ModelAndView model,HttpServletRequest request){
		String uid = (String)request.getSession().getAttribute("uid");
		List<userDingDanShow> arr = userServise.selectDingDan(uid);
		model.addObject("userdingdan", arr);
		model.setViewName("user");
		return model;
	}
	
	//查询正在进行的订单
	@RequestMapping("/longDingDan")
	public ModelAndView longDingDan(ModelAndView model,HttpServletRequest request){
		String zhuangtai = "0";		
		String uid = (String)request.getSession().getAttribute("uid");
		List<userDingDanShow> arr = userServise.selectLongDingDan(uid,zhuangtai);
		model.addObject("userdingdan", arr);
		model.setViewName("user-jdingdan");
		return model;
	}
	
	//查看完成的订单
	@RequestMapping("/okDingDan")
	public ModelAndView okDingDan(ModelAndView model,HttpServletRequest request){
		String zhuangtai = "1";		
		String uid = (String)request.getSession().getAttribute("uid");
		List<userDingDanShow> arr = userServise.selectOkDingDan(uid, zhuangtai);
		model.addObject("userdingdan", arr);
		model.setViewName("user-okdingdan");
		return model;
	}
	//确认订单按钮
	@RequestMapping("/yesDingDan")
	@ResponseBody
	public ModelAndView yesDingDan(ModelAndView model,HttpServletRequest request,@Param("did")String did){
		userServise.updateDingDan(did);
		String zhuangtai = "0";		
		String uid = (String)request.getSession().getAttribute("uid");
		List<userDingDanShow> arr = userServise.selectLongDingDan(uid,zhuangtai);
		model.addObject("userdingdan", arr);
		model.setViewName("user-jdingdan");
		return model;
	}
	//用户修改密码
	@RequestMapping("/newPwd")
	@ResponseBody
	public Integer newPwd(@Param("upwd")String upwd,HttpServletRequest request){
		String uid = (String)request.getSession().getAttribute("uid");
		int a = userServise.updatePwd(upwd, uid);
		return a;
	}
	//用户修改家庭住址
	@RequestMapping("/newUaddr")
	@ResponseBody
	public Integer newUaddr(@Param("uaddr")String uaddr,HttpServletRequest request){
		String uid = (String)request.getSession().getAttribute("uid");
		int a = userServise.updateUaddr(uaddr, uid);
		return a;
	}
}




