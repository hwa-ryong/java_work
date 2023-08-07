 package model_p;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Pattern;

public class BoardDTO {
	String title, pname, pw, upfile, content;
	Date reg_date;
	int id, cnt, seq, lev, gid;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) HH:mm");
	
	
	@Override
	public String toString() {
		return "BoardDTO [title=" + title + ", pname=" + pname + ", pw=" + pw + ", upfile=" + upfile + ", content="
				+ content + ", reg_date=" + reg_date + ", id=" + id + ", cnt=" + cnt + ", seq=" + seq + ", lev=" + lev
				+ ", gid=" + gid + "]";
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getUpfile() {
		
		if(upfile==null || 
			upfile.trim().equals("") || // trim : 앞뒤 공백을 없애준다. 사이에 있는 공백은 못 없앤다.
			upfile.trim().equals("null")) {
			upfile = "";
		}
		
		
		return upfile;
	}
	
	public boolean isImg() {
		//Pattern.matches(. << 점이 있으면 앞에 어떤 글자가 있어도 상관없다. ///  * << 별이 있으면 뒤에 몇자리가 와도 상관없다.)
		boolean res = Pattern.matches(".*[.](jpg|bmp|png|gif)", getUpfile().toLowerCase()); //어느 것이 들어오는 지 검사하겠다.
		
		return res;
	}
	
	public void setUpfile(String upfile) {
		this.upfile = upfile;
	}
	
	public String getContent() {
		return content;
	}
	
	public String getContentBr() {
		return content.replaceAll("\n", "<br/>");
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getReg_date() {
		return reg_date;
	}
	
	public String getReg_dateStr() {
		return sdf.format(reg_date);
	}
	
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	
	
}
