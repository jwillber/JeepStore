package cn.jeep.AdminBean;

public class lookCarNameBean {
	private String carid;
	private String carimg;
	private String carname;
	private String cartext;
	private int carzt;
	
	public String getCarid() {
		return carid;
	}
	public void setCarid(String carid) {
		this.carid = carid;
	}
	public String getCarimg() {
		return carimg;
	}
	public void setCarimg(String carimg) {
		this.carimg = carimg;
	}
	public String getCarname() {
		return carname;
	}
	public void setCarname(String carname) {
		this.carname = carname;
	}
	public String getCartext() {
		return cartext;
	}
	public void setCartext(String cartext) {
		this.cartext = cartext;
	}
	public int getCarzt() {
		return carzt;
	}
	public void setCarzt(int carzt) {
		this.carzt = carzt;
	}
	@Override
	public String toString() {
		return "lookCarNameBean [carid=" + carid + ", carimg=" + carimg + ", carname=" + carname + ", cartext="
				+ cartext + ", carzt=" + carzt + "]";
	}
	
}
