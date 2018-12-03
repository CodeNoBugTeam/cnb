package Bean;

public class introduce {
	private int fin;
	private String ipic;
	private String fplace;
	private String details;
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
	@Override
	public String toString() {
		return "introduce [fin=" + fin + ", ipic=" + ipic + ", fplace=" + fplace + ", details=" + details + "]";
	}
	
}
