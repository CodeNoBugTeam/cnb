package Bean;

import java.sql.Timestamp;

public class shoppingCart {
	private int id;
	private int cid;
	private int uid;
	private int fin;
	private Timestamp ctime;
	private String fname;
	private String fdetails;
	private String fprice;
	private String fipic;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFin() {
		return fin;
	}
	public void setFin(int fin) {
		this.fin = fin;
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
	public int getfin() {
		return fin;
	}
	public void setfin(int fin) {
		this.fin = fin;
	}
	public Timestamp getCtime() {
		return ctime;
	}
	public void setCtime(Timestamp ctime) {
		this.ctime = ctime;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFdetails() {
		return fdetails;
	}
	public void setFdetails(String fdetails) {
		this.fdetails = fdetails;
	}
	public String getFprice() {
		return fprice;
	}
	public void setFprice(String fprice) {
		this.fprice = fprice;
	}
	
	public String getFipic() {
		return fipic;
	}
	public void setFipic(String fipic) {
		this.fipic = fipic;
	}
	@Override
	public String toString() {
		return "shoppingCart [cid=" + cid + ", uid=" + uid + ", fin=" + fin + ", ctime=" + ctime + ", fname=" + fname
				+ ", fdetails=" + fdetails + ", fprice=" + fprice + "]";
	}
	

}
