package cn.jeep.CarServise;


import java.util.List;

import org.springframework.stereotype.Service;

import cn.jeep.CarBean.Car;
import cn.jeep.CarBean.PageCar;


public interface ShowCarServise {

	//查询所有车辆
	<T> PageCar<T> AllCar(PageCar<T> pageCar);
	
}
