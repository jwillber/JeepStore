package cn.jeep.CarMapper;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import cn.jeep.CarBean.Car;
import cn.jeep.CarBean.carImg;
import cn.jeep.CarBean.carPeizhi;
import cn.jeep.CarBean.detailsCar;
import cn.jeep.CarBean.peizhiColor;
import cn.jeep.CarBean.xCarImg;

public interface ShowCarMapper {
	
	//查询所有车辆
	List<Car> AllCar(@Param("start")int start,@Param("end")int end);
	//总页数
	Integer AllCarCount();
	
	//产品详情大业务bean  ------------------------------------------------------
	//测试映射
	detailsCar detailsCars(String carid);
	
	List<carPeizhi> selectPerizhi(@Param("carid")String carid);
	
	List<xCarImg> selectPximg(@Param("carid")String carid);
	
	List<carImg> selectPimg(@Param("carid")String carid);
	//颜色
	List<peizhiColor> selectCarColor(@Param("carid")String carid,@Param("pid")String pid);
}
