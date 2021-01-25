package com.ryu.vo;

public class SignupVO {

	private int lno;
	private String lname;
	private int lage;
	private String lemail;
	private String lsex;
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
	public String getLsex() {
		return lsex;
	}
	public void setLsex(String lsex) {
		this.lsex = lsex;
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
	@Override
	public String toString() {
		return "SignupVO [lno=" + lno + ", lname=" + lname + ", lage=" + lage + ", lemail=" + lemail + ", lsex=" + lsex
				+ ", ltel=" + ltel + ", lhome=" + lhome + "]";
	}
	
	
	
}
