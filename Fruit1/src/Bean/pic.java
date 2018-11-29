package Bean;

public class pic {
	private int fid;
	private String showpic;
	private String dettailpic;
	private String introducepic;
	private String advpic;
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getShowpic() {
		return showpic;
	}
	public void setShowpic(String showpic) {
		this.showpic = showpic;
	}
	public String getDettailpic() {
		return dettailpic;
	}
	public void setDettailpic(String dettailpic) {
		this.dettailpic = dettailpic;
	}
	public String getIntroducepic() {
		return introducepic;
	}
	public void setIntroducepic(String introducepic) {
		this.introducepic = introducepic;
	}
	public String getAdvpic() {
		return advpic;
	}
	public void setAdvpic(String advpic) {
		this.advpic = advpic;
	}
	@Override
	public String toString() {
		return "pic [fid=" + fid + ", showpic=" + showpic + ", dettailpic=" + dettailpic + ", introducepic="
				+ introducepic + ", advpic=" + advpic + "]";
	}
	
}
