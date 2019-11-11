package cn.jeep.CarBean;

public class carPeizhi {
	private String carid;
	private String pid;
	private String pname;
	private int pzt;
	
	
	public String getCarid() {
		return carid;
	}
	public void setCarid(String carid) {
		this.carid = carid;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPzt() {
		return pzt;
	}
	public void setPzt(int pzt) {
		this.pzt = pzt;
	}
	
	public String toString() {
		return "carpeizhiBean [carid=" + carid + ", pid=" + pid + ", pname=" + pname + ", pzt=" + pzt + "]";
	}
}
