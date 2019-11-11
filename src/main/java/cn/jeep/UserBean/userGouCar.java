package cn.jeep.UserBean;

public class userGouCar {
	private String gid;
	private String uid;
	private String carname;
	private String pname;
	private String colorname;
	private String carimg;
	private String jiage;
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
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
	public String getCarimg() {
		return carimg;
	}
	public void setCarimg(String carimg) {
		this.carimg = carimg;
	}
	public String getJiage() {
		return jiage;
	}
	public void setJiage(String jiage) {
		this.jiage = jiage;
	}
	
	@Override
	public String toString() {
		return "userGouCar [gid=" + gid + ", uid=" + uid + ", carname=" + carname + ", pname=" + pname + ", colorname="
				+ colorname + ", carimg=" + carimg + ", jiage=" + jiage + "]";
	}
}
