package Bean;

import java.sql.Timestamp;

public class message {
private int mid;
	private Timestamp mtime;
	private String theme;
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
	@Override
	public String toString() {
		return "message [mid=" + mid + ", mtime=" + mtime + ", theme=" + theme + ", content=" + content + "]";
	}
	
}
