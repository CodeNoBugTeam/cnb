package Bean;

public class Paixu {
	private String num;
	private int  fid;
	private String fname;
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	@Override
	public String toString() {
		return "Paixu [num=" + num + ", fid=" + fid + ", fname=" + fname + "]";
	}
	
	

}
