package Bean;

public class food {
	private int cid;
	private int fid;
	private int buynum;
	private double perprice;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public double getPerprice() {
		return perprice;
	}
	public void setPerprice(double perprice) {
		this.perprice = perprice;
	}
	@Override
	public String toString() {
		return "food [cid=" + cid + ", fid=" + fid + ", buynum=" + buynum + ", perprice=" + perprice + "]";
	}
}
