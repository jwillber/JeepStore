package cn.jeep.UserBean;

import java.util.ArrayList;
import java.util.List;


public class userMoreDingDan {
	private String uid;
	private int zhuangtai;
	private String tel;
	private String uname;
	private String uaddr;
	private double zongjia;
	private String shijian;
	private List<userGouCar> morearr=new ArrayList<userGouCar>();
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public int getZhuangtai() {
		return zhuangtai;
	}
	public void setZhuangtai(int zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUaddr() {
		return uaddr;
	}
	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}
	public double getZongjia() {
		return zongjia;
	}
	public void setZongjia(double zongjia) {
		this.zongjia = zongjia;
	}
	public String getShijian() {
		return shijian;
	}
	public void setShijian(String shijian) {
		this.shijian = shijian;
	}
	public List<userGouCar> getMorearr() {
		return morearr;
	}
	public void setMorearr(List<userGouCar> morearr) {
		this.morearr = morearr;
	}
	@Override
	public String toString() {
		return "userMoreDingDan [uid=" + uid + ", zhuangtai=" + zhuangtai + ", tel=" + tel + ", uname=" + uname
				+ ", uaddr=" + uaddr + ", zongjia=" + zongjia + ", shijian=" + shijian + ", morearr=" + morearr + "]";
	}

}
