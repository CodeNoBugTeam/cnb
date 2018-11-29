package Bean;

import java.sql.Timestamp;

public class user {
	private int uid;
	private String uname;
	private String truename;
	private String email;
	private String upwd;
	private String uaddress;
	private Timestamp jointime;
	private String utel;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
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
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUtel() {
		return utel;
	}
	public void setUtel(String utel) {
		this.utel = utel;
	}
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getJointime() {
		return jointime;
	}
	public void setJointime(Timestamp jointime) {
		this.jointime = jointime;
	}
	@Override
	public String toString() {
		return "user [uid=" + uid + ", uname=" + uname + ", truename=" + truename + ", email=" + email + ", upwd="
				+ upwd + ", uaddress=" + uaddress + ", jointime=" + jointime + ", utel=" + utel + "]";
	}
	
	
}
