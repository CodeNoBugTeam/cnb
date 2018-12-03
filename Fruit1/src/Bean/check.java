package Bean;

import java.sql.Timestamp;

public class check {
	private int cid;
	private int uid;
	private Timestamp cdate;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public Timestamp getCdate() {
		return cdate;
	}
	public void setCdate(Timestamp cdate) {
		this.cdate = cdate;
	}
	@Override
	public String toString() {
		return "check [cid=" + cid + ", uid=" + uid + ", cdate=" + cdate + "]";
	}
	
}
