package Bean;

import java.sql.Timestamp;

public class user {
	private int uid;
	private String uname;//会员名称
	private String truename;//真实姓名
	private String email;//邮箱
	private String upwd;//密码
	private String uaddress;//地址
	private String utel;//电话
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
	@Override
	public String toString() {
		return "user [uid=" + uid + ", uname=" + uname + ", truename=" + truename + ", email=" + email + ", upwd="
				+ upwd + ", uaddress=" + uaddress + ", jointime=" + ", utel=" + utel + "]";
	}
	
	
}
