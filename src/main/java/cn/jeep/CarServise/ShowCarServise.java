package cn.jeep.CarServise;





import cn.jeep.CarBean.PageCar;
import cn.jeep.CarBean.detailsCar;


public interface ShowCarServise {

	//查询所有车辆
	<T> PageCar<T> AllCar(PageCar<T> pageCar);
	
	//测试映射
	detailsCar detailsCars(String carid);
}
