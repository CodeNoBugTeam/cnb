package Bean;

import ly.DBHelper;

public class ShoppingAddress {
	private int uid;
	private String sname;
	private String stel;
	private String sprovince;
	private String scity;
	private String scounty;
	private String sstreet;
	private String spostcode;
	private String sinput;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getStel() {
		return stel;
	}
	public void setStel(String stel) {
		this.stel = stel;
	}
	public String getSprovince() {
		return sprovince;
	}
	public void setSprovince(String sprovince) {
		this.sprovince = sprovince;
	}
	public String getScity() {
		return scity;
	}
	public void setScity(String scity) {
		this.scity = scity;
	}
	public String getScounty() {
		return scounty;
	}
	public void setScounty(String scounty) {
		this.scounty = scounty;
	}
	public String getSstreet() {
		return sstreet;
	}
	public void setSstreet(String sstreet) {
		this.sstreet = sstreet;
	}
	public String getSpostcode() {
		return spostcode;
	}
	public void setSpostcode(String spostcode) {
		this.spostcode = spostcode;
	}
	public String getSinput() {
		return sinput;
	}
	public void setSinput(String sinput) {
		this.sinput = sinput;
	}
	@Override
	public String toString() {
		return "ShoppingAddress [uid=" + uid + ", sname=" + sname + ", stel=" + stel + ", sprovince=" + sprovince
				+ ", scity=" + scity + ", scounty=" + scounty + ", sstreet=" + sstreet + ", spostcode=" + spostcode
				+ ", sinput=" + sinput + "]";
	}
	
	
	
}
