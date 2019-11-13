package cn.jeep.UserBean;

import java.util.ArrayList;
import java.util.List;

import cn.jeep.UserBean.userGouCar;

public class deluserGouCar {
	private int count;
	private List<userGouCar> goucarArr=new ArrayList<userGouCar>();
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<userGouCar> getGoucarArr() {
		return goucarArr;
	}
	public void setGoucarArr(List<userGouCar> goucarArr) {
		this.goucarArr = goucarArr;
	}
	@Override
	public String toString() {
		return "delgoucarBean [count=" + count + ", goucarArr=" + goucarArr + "]";
	}
}
