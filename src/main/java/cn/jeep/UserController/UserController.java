package cn.jeep.UserController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.jeep.UserBean.User;
import cn.jeep.UserServise.UserServise;

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
	
}
