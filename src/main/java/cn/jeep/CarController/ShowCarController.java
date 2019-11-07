package cn.jeep.CarController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.jeep.CarBean.PageCar;
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
}
