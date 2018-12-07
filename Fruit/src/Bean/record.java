package Bean;

import java.sql.Timestamp;

public class record {
	private String lid;
	private String wname;
	private Timestamp logintime;
	
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public Timestamp getLogintime() {
		return logintime;
	}
	public void setLogintime(Timestamp logintime) {
		this.logintime = logintime;
	}
	

}
