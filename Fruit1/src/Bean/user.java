package Bean;

public class user {
	private int uid;
	private String uname;
	private String upwd;
	private String uaddress;
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
	@Override
	public String toString() {
		return "user [uid=" + uid + ", uname=" + uname + ", upwd=" + upwd + ", uaddress=" + uaddress + ", utel=" + utel
				+ "]";
	}
	
}
