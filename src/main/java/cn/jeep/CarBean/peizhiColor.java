package cn.jeep.CarBean;

public class peizhiColor {
	private String colorid;
	private String colorname;
	private int czt;
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
		return "peizhiColor [colorid=" + colorid + ", colorname=" + colorname + ", czt=" + czt + "]";
	}
	
}
