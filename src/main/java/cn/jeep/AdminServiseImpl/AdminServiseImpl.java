package cn.jeep.AdminServiseImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.jeep.AdminBean.candpBean;
import cn.jeep.AdminBean.lookCarNameBean;
import cn.jeep.AdminMapper.AdminMapper;
import cn.jeep.AdminServise.AdminServise;
import cn.jeep.CarBean.carPeizhi;
import cn.jeep.CarBean.peizhiColor;

@Service
public class AdminServiseImpl implements AdminServise {
	
	@Autowired
	AdminMapper adminMapper;
	
	//查看所有车名
	public List<lookCarNameBean> lookCarName() {
		// TODO Auto-generated method stub
		List<lookCarNameBean> arr = adminMapper.lookCarName();
		return arr;
	}
	
	//插配置
	
	public List<carPeizhi> lookpeizhi(String carid) {
		// TODO Auto-generated method stub
		List<carPeizhi> arr = adminMapper.lookpeizhi(carid);
		return arr;
	}

	public List<peizhiColor> lookcolor(String pid) {
		// TODO Auto-generated method stub
		List<peizhiColor> arr = adminMapper.lookcolor(pid);
		return arr;
	}

	public candpBean lookcolors(String colorid,String pid) {
		// TODO Auto-generated method stub
		candpBean arr = adminMapper.lookcolors(colorid, pid);
		return arr;
	}

	public List<lookCarNameBean> updateUpcar(String carid) {
		// TODO Auto-generated method stub
		adminMapper.updateUpcar(carid);
		List<lookCarNameBean> arr = adminMapper.lookCarName();
		return arr;
	}

	public List<lookCarNameBean> updateDouwncar(String carid) {
		// TODO Auto-generated method stub
		adminMapper.updateDouwncar(carid);
		List<lookCarNameBean> arr = adminMapper.lookCarName();
		return arr;
	}
	
	
}
