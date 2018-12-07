package Bean;

import java.sql.Timestamp;

public class introduce {
	private int fin;
	private String ipic;
	private String fplace;
	private String details;
	private String family;
	private float price;
	private String number;
	private Timestamp jointime;
	private String fname;
	public int getFin() {
		return fin;
	}
	public void setFin(int fin) {
		this.fin = fin;
	}
	public String getIpic() {
		return ipic;
	}
	public void setIpic(String ipic) {
		this.ipic = ipic;
	}
	public String getFplace() {
		return fplace;
	}
	public void setFplace(String fplace) {
		this.fplace = fplace;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getFamily() {
		return family;
	}
	public void setFamily(String family) {
		this.family = family;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public Timestamp getJointime() {
		return jointime;
	}
	public void setJointime(Timestamp jointime) {
		this.jointime = jointime;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	@Override
	public String toString() {
		return "introduce [fin=" + fin + ", ipic=" + ipic + ", fplace=" + fplace + ", details=" + details + "]";
	}
	
}
