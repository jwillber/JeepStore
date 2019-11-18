package cn.jeep.UserBean;

import java.util.ArrayList;
import java.util.List;


public class userMoreDingDan {
	private String uid;
	private String utell;
	private String uname;
	private String uaddr;
	private double zongjia;
	private List<userGouCar> morearr=new ArrayList<userGouCar>();
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	
	public String getUtell() {
		return utell;
	}
	public void setUtell(String utell) {
		this.utell = utell;
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

	public List<userGouCar> getMorearr() {
		return morearr;
	}
	public void setMorearr(List<userGouCar> morearr) {
		this.morearr = morearr;
	}
	@Override
	public String toString() {
		return "userMoreDingDan [uid=" + uid + ", utell=" + utell + ", uname=" + uname
				+ ", uaddr=" + uaddr + ", zongjia=" + zongjia + ", morearr=" + morearr + "]";
	}

}
