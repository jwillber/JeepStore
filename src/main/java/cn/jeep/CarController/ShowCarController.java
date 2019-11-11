package cn.jeep.CarController;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.jeep.CarBean.PageCar;
import cn.jeep.CarBean.detailsCar;
import cn.jeep.CarServise.ShowCarServise;

@Controller
@RequestMapping("/showcar")
public class ShowCarController {
	
	@Autowired
	ShowCarServise showCarServiseImpl;
	
	//查询所有车辆
	@RequestMapping("/allCar")
	public <T> ModelAndView AllCar(ModelAndView model,PageCar<T> pageCar){
		System.out.println(pageCar.toString()+"---------------------------------");
		model.addObject("lim", showCarServiseImpl.AllCar(pageCar));
		model.setViewName("showcar");
		return model;
	}
	
	
	//产品详情大业务bean
	@RequestMapping("/oneCarInfo")
	public ModelAndView oneCarInfo(ModelAndView model,@Param("carid")String carid) {
		// TODO Auto-generated method stub
		System.out.println(carid+"-------------------------------");
		detailsCar detC = showCarServiseImpl.detailsCars(carid);
		model.addObject("carx", detC);
		model.setViewName("carx");
		return model;
	}
	
	//选中车辆配置显示当前配置的颜色配置
	@RequestMapping("/pColor")
	public ModelAndView getPColor(ModelAndView model,@Param("pid")String pid){
		
		return model;
	}
	
}
