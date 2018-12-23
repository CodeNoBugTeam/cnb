package Bean;

import java.sql.Timestamp;

public class store {
	private int wid;
	private int fid;
	private Timestamp findate;
	private int snum;
	private double sprice;

	public int getWid() {
		return wid;
	}

	public void setWid(int wid) {
		this.wid = wid;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public Timestamp getFindate() {
		return findate;
	}

	public void setFindate(Timestamp findate) {
		this.findate = findate;
	}

	public int getSnum() {
		return snum;
	}

	public void setSnum(int snum) {
		this.snum = snum;
	}

	public double getSprice() {
		return sprice;
	}

	public void setSprice(double sprice) {
		this.sprice = sprice;
	}

	@Override
	public String toString() {
		return "store [wid=" + wid + ", fid=" + fid + ", findate=" + findate + ", snum=" + snum + ", sprice=" + sprice
				+ "]";
	}

}
