package Bean;

import java.sql.Timestamp;

public class worker {
	private int wid;
	private String wname;
	private String wtel;
	private String wemail;
	private Timestamp jointime;
	private String wpwd;
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public String getWtel() {
		return wtel;
	}
	public void setWtel(String wtel) {
		this.wtel = wtel;
	}
	public String getWemail() {
		return wemail;
	}
	public void setWemail(String wemail) {
		this.wemail = wemail;
	}
	public Timestamp getJointime() {
		return jointime;
	}
	public void setJointime(Timestamp jointime) {
		this.jointime = jointime;
	}
	public String getWpwd() {
		return wpwd;
	}
	public void setWpwd(String wpwd) {
		this.wpwd = wpwd;
	}
	@Override
	public String toString() {
		return "worker [wid=" + wid + ", wname=" + wname + ", wtel=" + wtel + ", wemail=" + wemail + ", jointime="
				+ jointime + ", wpwd=" + wpwd + "]";
	}
	
}
