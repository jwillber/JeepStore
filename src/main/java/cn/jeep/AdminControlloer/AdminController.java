package cn.jeep.AdminControlloer;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.jeep.AdminBean.candpBean;
import cn.jeep.AdminBean.lookCarNameBean;
import cn.jeep.AdminServise.AdminServise;
import cn.jeep.CarBean.carPeizhi;
import cn.jeep.CarBean.peizhiColor;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminServise adminServise;
	
	//查看所有汽车名字
	@RequestMapping("/lookcarname")
	public ModelAndView lookcaename(ModelAndView model){
		List<lookCarNameBean> arr = adminServise.lookCarName();
		model.addObject("lookcar", arr);
		model.setViewName("lookcark");
		return model;
	}
	//查看配置
	@RequestMapping("/lookpeizhi")
	@ResponseBody
	public List<carPeizhi> lookpeizhi(@Param("carid")String carid){
		List<carPeizhi> arr = adminServise.lookpeizhi(carid);
		return arr;
	}
	
	//看颜色
	@RequestMapping("/lookcolor")
	@ResponseBody
	public List<peizhiColor> lookcolor(@Param("pid")String pid){
		List<peizhiColor> arr = adminServise.lookcolor(pid);
		return arr;
	}
	//详细颜色
	@RequestMapping("/lookcolors")
	@ResponseBody
	public candpBean lookcolors(@Param("colorid")String colorid,@Param("pid")String pid){
		candpBean arr = adminServise.lookcolors(colorid, pid);
		return arr;
	}
	//上加车辆
	@RequestMapping("/upcarname")
	@ResponseBody
	public List<lookCarNameBean> upcarname(@Param("carid")String carid){
		List<lookCarNameBean> arr = adminServise.updateUpcar(carid);
		System.out.println(carid);
		return arr;
	}
	//下架车辆
	@RequestMapping("/downcarname")
	@ResponseBody
	public List<lookCarNameBean> downcarname(ModelAndView model,@Param("carid")String carid){
		List<lookCarNameBean> arr = adminServise.updateDouwncar(carid);
		System.out.println(carid);
		return arr;
	}
}
