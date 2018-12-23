package Bean;

import java.sql.Timestamp;

public class message {
	private int mid;
	private String mtitle;
	private String mdescription;
	private String mkeyword;
	private Timestamp mtime;
	private String theme;
	private String mstate;
	private String content;

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public Timestamp getMtime() {
		return mtime;
	}

	public void setMtime(Timestamp mtime) {
		this.mtime = mtime;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMtitle() {
		return mtitle;
	}

	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}

	public String getMdescription() {
		return mdescription;
	}

	public void setMdescription(String mdescription) {
		this.mdescription = mdescription;
	}

	public String getMkeyword() {
		return mkeyword;
	}

	public void setMkeyword(String mkeyword) {
		this.mkeyword = mkeyword;
	}

	public String getMstate() {
		return mstate;
	}

	public void setMstate(String mstate) {
		this.mstate = mstate;
	}

	@Override
	public String toString() {
		return "message [mid=" + mid + ", mtitle=" + mtitle + ", mdescription=" + mdescription + ", mkeyword="
				+ mkeyword + ", mtime=" + mtime + ", theme=" + theme + ", mstate=" + mstate + ", content=" + content
				+ "]";
	}

}
