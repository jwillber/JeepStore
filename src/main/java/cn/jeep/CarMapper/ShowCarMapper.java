package cn.jeep.CarMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.jeep.CarBean.Car;
import cn.jeep.CarBean.PageCar;

public interface ShowCarMapper {
	
	//查询所有车辆
	List<Car> AllCar(@Param("start")int start,@Param("end")int end);
	//总页数
	Integer AllCarCount();
}
