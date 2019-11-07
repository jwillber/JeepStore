package cn.jeep.UserBean;

public class User {
	private String uoid;
	private String uid;
	private String uname;
	private String upwd;
	private String ushenfen;
	private String uaddr;
	private Integer usex;
	private String utell;
	private String br;
	private Integer zt;
	
	
	public String getUoid() {
		return uoid;
	}
	public void setUoid(String uoid) {
		this.uoid = uoid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUshenfen() {
		return ushenfen;
	}
	public void setUshenfen(String ushenfen) {
		this.ushenfen = ushenfen;
	}
	public String getUaddr() {
		return uaddr;
	}
	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}
	public Integer getUsex() {
		return usex;
	}
	public void setUsex(Integer usex) {
		this.usex = usex;
	}
	public String getUtell() {
		return utell;
	}
	public void setUtell(String utell) {
		this.utell = utell;
	}
	public String getBr() {
		return br;
	}
	public void setBr(String br) {
		this.br = br;
	}
	public Integer getZt() {
		return zt;
	}
	public void setZt(Integer zt) {
		this.zt = zt;
	}
	@Override
	public String toString() {
		return "User [uoid=" + uoid + ", uid=" + uid + ", uname=" + uname + ", upwd=" + upwd + ", ushenfen=" + ushenfen
				+ ", uaddr=" + uaddr + ", usex=" + usex + ", utell=" + utell + ", br=" + br + ", zt=" + zt + "]";
	}
	
	
}
