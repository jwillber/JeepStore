package cn.jeep.CarServiseImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jeep.CarBean.Car;
import cn.jeep.CarBean.PageCar;
import cn.jeep.CarBean.detailsCar;
import cn.jeep.CarMapper.ShowCarMapper;
import cn.jeep.CarServise.ShowCarServise;

@Service
public class ShowCarServiseImpl implements ShowCarServise{

	@Autowired
	ShowCarMapper showCarMapper;
	
	public <T> PageCar<T> AllCar(PageCar<T> pageCar) {
		// TODO Auto-generated method stub
		if(pageCar.getCurr()==0){
			//当前页
			pageCar.setCurr(1);
		}
		//每页显示条数
		pageCar.setCount(8);
		//总页数
		pageCar.setZcount(showCarMapper.AllCarCount());
		int zcurr=(int) Math.ceil(1.0*pageCar.getZcount()/pageCar.getCount());
		pageCar.setZcurr(zcurr);
		List<Car> arr = showCarMapper.AllCar((pageCar.getCurr()-1)*pageCar.getCount(),pageCar.getCount());
		pageCar.setArr(arr);
		//
		System.out.println(pageCar.toString());
		return pageCar;
	}


	public detailsCar detailsCars(String carid) {
		// TODO Auto-generated method stub
		//找下這個mapper在哪 
		String pid = carid.substring(0,carid.length()-1)+"1";
		detailsCar detC = showCarMapper.detailsCars(carid);
		detC.setPandc(showCarMapper.selectCarColor(carid, pid));
		System.out.println(detC.fatherString()+"~~~"+detC.toString());
		return detC;
	}


}
