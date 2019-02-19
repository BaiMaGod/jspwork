package myservlet.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Query;

import dbutil.Util;
import mybeen.been.DataBeen;
import mybeen.been.Massage;

/**
 * Servlet implementation class MassageServlet
 */
//@WebServlet("/MassageServlet")
public class MassageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String Query_News = "1";
	private static final String Query_New = "2";
   
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		
		DataBeen dataBeen;			
		HttpSession session = request.getSession(true);
		try {
			dataBeen = (DataBeen)session.getAttribute("dataBeen");	
			if(dataBeen==null) {
				dataBeen =new DataBeen();					//创建JavaBean对象
				session.setAttribute("dataBeen", dataBeen);	//将dataBeen存到session中
			}
		}catch(Exception e){
			dataBeen =new DataBeen();
			session.setAttribute("dataBeen", dataBeen);
		}
		
		String execute = request.getParameter("execute");
		try {
			if(Query_News.equals(execute))	queryNews(request,response,dataBeen);
			
			else if(Query_New.equals(execute)) queryNew(request, response, dataBeen);
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @param request
	 * @param response
	 * @param dataBeen
	 */
	private void queryNew(HttpServletRequest request, HttpServletResponse response, DataBeen dataBeen)throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		
		String id = request.getParameter("id");
		
		
		Util util =new Util();
		Massage msg = null;
		try {
			 msg= util.queryNew(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String New="";
		if(msg!=null) {
			dataBeen.setTitle(msg.getTitle());
			dataBeen.setTy(msg.getType());
			dataBeen.setAuthor(msg.getAuthor());
			dataBeen.setTime(msg.getTime());
			dataBeen.setMsg(msg.getMsg());
		}
		response.sendRedirect("new.jsp");
	}

	/**
	 * 
	 */
	private void queryNews(HttpServletRequest request, HttpServletResponse response,DataBeen dataBeen) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		String t = URLDecoder.decode(request.getParameter("type"),"utf-8");
		String type =new String(t.getBytes("GBK"));
		dataBeen.setType(type);
		
		Util util =new Util();
		List<Massage> msgList = null;
		try {
			msgList = util.query(type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String news="";
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
		dataBeen.setNews(news);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		
		DataBeen dataBeen;			
		HttpSession session = request.getSession(true);
		try {
			dataBeen = (DataBeen)session.getAttribute("dataBeen");	
			if(dataBeen==null) {
				dataBeen = new DataBeen();					//创建JavaBean对象
				session.setAttribute("dataBeen", dataBeen);	//将dataBeen存到session中
			}
		}catch(Exception e){
			dataBeen = new DataBeen();
			session.setAttribute("dataBeen", dataBeen);
		}
		
		Util util =new Util();
		List<Massage> msgList = null;
		try {
			msgList = util.query(dataBeen.getType());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String news="";
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
		dataBeen.setNews(news);
		response.sendRedirect("newsView.jsp");
	}

}
