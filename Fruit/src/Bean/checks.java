package Bean;

import java.sql.Timestamp;

public class checks {
	private int cid;
	private int uid;
	private Timestamp cdate;
	private String sendaddr;
	private String senddata;
	private String fapiao;
	private String sleave;
	private double zongji;
	private String state;

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

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

	public String getSendaddr() {
		return sendaddr;
	}

	public void setSendaddr(String sendaddr) {
		this.sendaddr = sendaddr;
	}

	public String getSenddata() {
		return senddata;
	}

	public void setSenddata(String senddata) {
		this.senddata = senddata;
	}

	public String getFapiao() {
		return fapiao;
	}

	public void setFapiao(String fapiao) {
		this.fapiao = fapiao;
	}

	public String getSleave() {
		return sleave;
	}

	public void setSleave(String sleave) {
		this.sleave = sleave;
	}

	public double getZongji() {
		return zongji;
	}

	public void setZongji(double zongji) {
		this.zongji = zongji;
	}

	@Override
	public String toString() {
		return "check [cid=" + cid + ", uid=" + uid + ", cdate=" + cdate + ", sendaddr=" + sendaddr + ", senddata="
				+ senddata + ", fapiao=" + fapiao + ", sleave=" + sleave + ", zongji=" + zongji + "]";
	}

}
