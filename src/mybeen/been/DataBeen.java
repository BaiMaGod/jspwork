/** 
* @author  yc 
* @parameter  
*/
package mybeen.been;

import java.sql.SQLException;
import java.util.List;
import dbutil.Util;

/**
 * @author Administrator
 *
 */
public class DataBeen {
	private String type = "全部";
	private String news="";
	private String title;
	private String author;
	private String time;
	private String ty;
	private String msg;
	
	
	public DataBeen() {
		List<Massage> msgList = null;
		try {
			msgList = new Util().query("热点");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if(msgList!=null) {
			for(Massage s:msgList) {
				news+="<div class=\"div\"><img src=\"image/new.jpg\"/><div>";
				news+="<a href=\"massageServlet?execute=2&id="+s.getId()+"\">";
				news+=s.getTitle();
				news+="</a><br /><div><input type=\"button\" disabled=\"false\" value=\"";
				news+=s.getType();
				news+="\"/><a href=\"authorView.jsp?author=?"+s.getAuthor()+"\">";
				news+=s.getAuthor();
				news+="</a><br /><span>";
				news+=s.getTime();
				news+="</span></div></div></div>";				
			}
		}
	}
	public DataBeen(int i) {
		List<Massage> msgList = null;
		try {
			msgList = new Util().query("全部");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if(msgList!=null) {
			for(Massage s:msgList) {
				news+="<div class=\"div\"><img src=\"image/new.jpg\"/><div class=\"div2\">";
				news+="<a href=\"massageServlet?execute=2&id="+s.getId()+"\">";
				news+=s.getTitle();
				news+="</a><br /><div><input type=\"button\" disabled=\"false\" value=\"";
				news+=s.getType();
				news+="\"/><a href=\"authorView.jsp?author=?"+s.getAuthor()+"\">";
				news+=s.getAuthor();
				news+="</a><br /><span>";
				news+=s.getTime();
				news+="</span></div></div><div class=\"div3\">"
						+ "<a href=\"managerServlet?execute=3&id="+s.getId()+"'>";
				news+="<input type='button' value='删除'/></a><a href='updateView.jsp?id=";
				news+=s.getId()+"'><input type='button' value='修改' /></a>";			
			}
		}
	}
	
	
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * @return the news
	 */
	public String getNews() {
		return news;
	}
	/**
	 * @param news the news to set
	 */
	public void setNews(String news) {
		this.news = news;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the author
	 */
	public String getAuthor() {
		return author;
	}
	/**
	 * @param athor the author to set
	 */
	public void setAuthor(String athor) {
		this.author = athor;
	}
	/**
	 * @return the time
	 */
	public String getTime() {
		return time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(String time) {
		this.time = time;
	}
	/**
	 * @return the ty
	 */
	public String getTy() {
		return ty;
	}
	/**
	 * @param ty the ty to set
	 */
	public void setTy(String ty) {
		this.ty = ty;
	}
	/**
	 * @return the msg
	 */
	public String getMsg() {
		return msg;
	}
	/**
	 * @param msg the msg to set
	 */
	public void setMsg(String msg) {
		this.msg = msg;
	}
}
