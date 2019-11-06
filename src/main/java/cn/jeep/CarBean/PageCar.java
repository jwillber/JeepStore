package cn.jeep.CarBean;

import java.util.ArrayList;
import java.util.List;

public class PageCar<T> {
	//当前页
	private int curr;
	//每页显示多少条
	private int count;
	//总条数
	private int zcount;
	//总页数
	private int zcurr;
	//每页显示的数据
	private List<Car> arr=new ArrayList<Car>();
	public int getCurr() {
		return curr;
	}
	public void setCurr(int curr) {
		this.curr = curr;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getZcount() {
		return zcount;
	}
	public void setZcount(int zcount) {
		this.zcount = zcount;
	}
	public int getZcurr() {
		return zcurr;
	}
	public void setZcurr(int zcurr) {
		this.zcurr = zcurr;
	}
	public List<Car> getArr() {
		return arr;
	}
	public void setArr(List<Car> arr) {
		this.arr = arr;
	}
	
	@Override
	public String toString() {
		return "PageCar [curr=" + curr + ", count=" + count + ", zcount=" + zcount + ", zcurr=" + zcurr + ", arr=" + arr
				+ "]";
	}

}
