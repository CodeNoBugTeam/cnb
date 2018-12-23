package Bean;

import java.sql.Timestamp;

public class evaluate {
	private int fid;
	private int uid;
	private String estar;
	private String econtent;
	private Timestamp edate;

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getEstar() {
		return estar;
	}

	public void setEstar(String estar) {
		this.estar = estar;
	}

	public String getEcontent() {
		return econtent;
	}

	public void setEcontent(String econtent) {
		this.econtent = econtent;
	}

	public Timestamp getEdate() {
		return edate;
	}

	public void setEdate(Timestamp edate) {
		this.edate = edate;
	}

	@Override
	public String toString() {
		return "evaluate [fid=" + fid + ", uid=" + uid + ", estar=" + estar + ", econtent=" + econtent + ", edate="
				+ edate + "]";
	}

}
