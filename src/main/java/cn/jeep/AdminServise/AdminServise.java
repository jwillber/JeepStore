package cn.jeep.AdminServise;

import java.util.List;

import cn.jeep.AdminBean.candpBean;
import cn.jeep.AdminBean.lookCarNameBean;
import cn.jeep.CarBean.carPeizhi;
import cn.jeep.CarBean.peizhiColor;

public interface AdminServise {
	//查看所有车名
	List<lookCarNameBean> lookCarName();
	//根据车id查询配置
	List<carPeizhi> lookpeizhi(String carid);
	//查看颜色
	List<peizhiColor> lookcolor(String pid);
	//详细颜色
	candpBean lookcolors(String colorid,String pid);
	//上加车辆
	List<lookCarNameBean> updateUpcar(String carid);
	//下架车辆
	List<lookCarNameBean> updateDouwncar(String carid);
}
