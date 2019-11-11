package cn.jeep.CarBean;

public class carImg {
	private String carid;
	private String carimg;
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
	
	public String toString() {
		return "carimgBean [carid=" + carid + ", carimg=" + carimg + "]";
	}
}
