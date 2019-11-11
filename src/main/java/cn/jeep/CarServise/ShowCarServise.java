package cn.jeep.CarServise;





import java.util.List;

import cn.jeep.CarBean.PageCar;
import cn.jeep.CarBean.detailsCar;
import cn.jeep.CarBean.peizhiColor;


public interface ShowCarServise {

	//查询所有车辆
	<T> PageCar<T> AllCar(PageCar<T> pageCar);
	
	//测试映射
	detailsCar detailsCars(String carid);
	
	//一组对应配置的颜色
	List<peizhiColor> selectOneColor(String pid);
}
