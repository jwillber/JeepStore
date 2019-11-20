package cn.jeep.UserBean;

public class userDingDanShow {
	private String did;
	private String uid;
	private String carname;
	private String pname;
	private String colorname;
	private String shijian;
	private String uaddr;
	private int zhuangtai;
	private String jiage;
	
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getCarname() {
		return carname;
	}
	public void setCarname(String carname) {
		this.carname = carname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getColorname() {
		return colorname;
	}
	public void setColorname(String colorname) {
		this.colorname = colorname;
	}
	public String getShijian() {
		return shijian;
	}
	public void setShijian(String shijian) {
		this.shijian = shijian;
	}
	public String getUaddr() {
		return uaddr;
	}
	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}
	public int getZhuangtai() {
		return zhuangtai;
	}
	public void setZhuangtai(int zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	public String getJiage() {
		return jiage;
	}
	public void setJiage(String jiage) {
		this.jiage = jiage;
	}
	@Override
	public String toString() {
		return "userDingDanShow [did=" + did + ", uid=" + uid + ", carname=" + carname + ", pname=" + pname
				+ ", colorname=" + colorname + ", shijian=" + shijian + ", uaddr=" + uaddr + ", zhuangtai=" + zhuangtai
				+ ", jiage=" + jiage + "]";
	}
	
}
