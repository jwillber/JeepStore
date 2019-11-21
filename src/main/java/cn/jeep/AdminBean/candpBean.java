package cn.jeep.AdminBean;

public class candpBean {
	private String pid;
	private String colorid;
	private String colorname;
	private int czt;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getColorid() {
		return colorid;
	}
	public void setColorid(String colorid) {
		this.colorid = colorid;
	}
	public String getColorname() {
		return colorname;
	}
	public void setColorname(String colorname) {
		this.colorname = colorname;
	}
	public int getCzt() {
		return czt;
	}
	public void setCzt(int czt) {
		this.czt = czt;
	}
	@Override
	public String toString() {
		return "candpBean [pid=" + pid + ", colorid=" + colorid + ", colorname=" + colorname + ", czt=" + czt + "]";
	}
	
}
