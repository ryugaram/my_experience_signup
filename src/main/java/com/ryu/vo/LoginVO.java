package com.ryu.vo;

public class LoginVO {

	private int lno;
	private String lname;
	private String lid;
	private String lpw;
	private int lage;
	private String lemail;
	private String ltel;
	private String lhome;
	public int getLno() {
		return lno;
	}
	public void setLno(int lno) {
		this.lno = lno;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public int getLage() {
		return lage;
	}
	public void setLage(int lage) {
		this.lage = lage;
	}
	public String getLemail() {
		return lemail;
	}
	public void setLemail(String lemail) {
		this.lemail = lemail;
	}
	
	public String getLtel() {
		return ltel;
	}
	public void setLtel(String ltel) {
		this.ltel = ltel;
	}
	public String getLhome() {
		return lhome;
	}
	public void setLhome(String lhome) {
		this.lhome = lhome;
	}
	
	
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public String getLpw() {
		return lpw;
	}
	public void setLpw(String lpw) {
		this.lpw = lpw;
	}
	@Override
	public String toString() {
		return "LoginVO [lno=" + lno + ", lname=" + lname + ", lid=" + lid + ", lpw=" + lpw + ", lage=" + lage
				+ ", lemail=" + lemail + ", ltel=" + ltel + ", lhome=" + lhome + "]";
	}
	
	
	
	
}
