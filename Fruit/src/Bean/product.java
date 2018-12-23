package Bean;

import java.sql.Timestamp;

public class product {
	private int fid;
	private String fanme;
	private String fvariety;
	private double fprice;
	private String finventory;
	private Timestamp findate;
	private Timestamp foffdate;
	private String fsave;

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getFanme() {
		return fanme;
	}

	public void setFanme(String fanme) {
		this.fanme = fanme;
	}

	public String getFvariety() {
		return fvariety;
	}

	public void setFvariety(String fvariety) {
		this.fvariety = fvariety;
	}

	public double getFprice() {
		return fprice;
	}

	public void setFprice(double fprice) {
		this.fprice = fprice;
	}

	public String getFinventory() {
		return finventory;
	}

	public void setFinventory(String finventory) {
		this.finventory = finventory;
	}

	public Timestamp getFindate() {
		return findate;
	}

	public void setFindate(Timestamp findate) {
		this.findate = findate;
	}

	public Timestamp getFoffdate() {
		return foffdate;
	}

	public void setFoffdate(Timestamp foffdate) {
		this.foffdate = foffdate;
	}

	public String getFsave() {
		return fsave;
	}

	public void setFsave(String fsave) {
		this.fsave = fsave;
	}

	@Override
	public String toString() {
		return "fruveg [fid=" + fid + ", fanme=" + fanme + ", fvariety=" + fvariety + ", fprice=" + fprice
				+ ", finventory=" + finventory + ", findate=" + findate + ", foffdate=" + foffdate + ", fsave=" + fsave
				+ "]";
	}

}
