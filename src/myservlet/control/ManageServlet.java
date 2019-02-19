package myservlet.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbutil.Util;
import mybeen.been.*;

/**
 * Servlet implementation class AuthorServlet
 */
//@WebServlet("/AuthorServlet")
public class ManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String Query_News = "1";
	private static final String Query_New = "2";
	private static final String Delete = "3";
	private static final String Insert = "4";
	private static final String Update = "5";
	
    
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
		
		ManagerBean dataBeen;			
		HttpSession session = request.getSession(true);
		try {
			dataBeen = (ManagerBean)session.getAttribute("dataBeen");	
			if(dataBeen==null) {
				dataBeen =new ManagerBean();					//创建JavaBean对象
				session.setAttribute("managerBean", dataBeen);	//将dataBeen存到session中
			}
		}catch(Exception e){
			dataBeen =new ManagerBean();
			session.setAttribute("managerBean", dataBeen);
		}
		
		String execute = request.getParameter("execute");
		try {
			if(Query_News.equals(execute))	queryNews(request,response,dataBeen);
			
			else if(Query_New.equals(execute)) queryNew(request, response, dataBeen);
			
			else if(Delete.equals(execute)) delete(request,response,dataBeen);
			
			else if(Insert.equals(execute))	insert(request,response,dataBeen);
			
			else if(Update.equals(execute)) update(request, response, dataBeen);
				
			Util util =new Util();
			List<Massage> msgList = null;
			try {
				msgList = util.query("全部");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			String news="";
			if(msgList!=null) {
				for(Massage s:msgList) {
					news+="<div class=\"div\"><img src=\"image/new.jpg\"/><div class=\"div2\">";
					news+="<a href=\"massageServlet?execute=2&id="+s.getId()+"\">";
					news+=s.getTitle();
					news+="</a><br /><div><input type=\"button\" disabled=\"false\" value=\"";
					news+=s.getType();
					news+="\"/><a href=\"authorView.jsp?author="+s.getAuthor()+"\">";
					news+=s.getAuthor();
					news+="</a><br /><span>";
					news+=s.getTime();
					news+="</span></div></div><div class=\"div3\">"
							+ "<a href=\"manageServlet?execute=3&id="+s.getId()+"\">";
					news+="<input type=\"button\" value=\"删除\" /></a><a href=\"updateView.jsp?id=";
					news+=s.getId()+"\"><input type=\"button\" value=\"修改\" /></a></div></div>";	
				
				}
			}
			dataBeen.setNews(news);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("ManagerView.jsp");
	}

	/**
	 * 
	 */
	private void delete(HttpServletRequest  request,HttpServletResponse response,ManagerBean dataBeen) throws Exception{
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		
		String id = request.getParameter("id");
		
		Util util =new Util();
		Massage msg = null;
		try {
			 util.delete(id);
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		queryNews(request,response,dataBeen);
		
		
	}

	/**
	 * @param request
	 * @param response
	 * @param dataBeen
	 */
	private void queryNew(HttpServletRequest request, HttpServletResponse response, ManagerBean dataBeen)throws Exception {
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
	private void queryNews(HttpServletRequest request, HttpServletResponse response,ManagerBean dataBeen) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		
		Util util =new Util();
		List<Massage> msgList = null;
		try {
			msgList = util.query("全部");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String news="";
		if(msgList!=null) {
			for(Massage s:msgList) {
				news+="<div class=\"div\"><img src=\"image/new.jpg\"/><div class=\"div2\">";
				news+="<a href=\"massageServlet?execute=2&id="+s.getId()+"\">";
				news+=s.getTitle();
				news+="</a><br /><div><input type=\"button\" disabled=\"false\" value=\"";
				news+=s.getType();
				news+="\"/><a href=\"authorView.jsp?author="+s.getAuthor()+"\">";
				news+=s.getAuthor();
				news+="</a><br /><span>";
				news+=s.getTime();
				news+="</span></div></div><div class=\"div3\">"
						+ "<a href=\"manageServlet?execute=3&id="+s.getId()+"\">";
				news+="<input type=\"button\" value=\"删除\" /></a><a href=\"updateView.jsp?id=";
				news+=s.getId()+"\"><input type=\"button\" value=\"修改\" /></a></div></div>";	
			
			}
		}
		dataBeen.setNews(news);
		System.out.println(news);
		System.out.println("查询成功");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		/*request.setCharacterEncoding("gbk");
		
		ManagerBean dataBeen;			
		HttpSession session = request.getSession(true);
		try {
			dataBeen = (ManagerBean)session.getAttribute("dataBeen");	
			if(dataBeen==null) {
				dataBeen =new ManagerBean();					//创建JavaBean对象
				session.setAttribute("dataBeen", dataBeen);	//将dataBeen存到session中
			}
		}catch(Exception e){
			dataBeen =new ManagerBean();
			session.setAttribute("dataBeen", dataBeen);
		}
		
		String execute = request.getParameter("execute");
		try {
			if(Insert.equals(execute))	insert(request,response,dataBeen);
			
			else if(Update.equals(execute)) update(request, response, dataBeen);
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
	}

	/**
	 * @param request
	 * @param response
	 * @param dataBeen
	 * @throws IOException 
	 */
	private void update(HttpServletRequest request, HttpServletResponse response, ManagerBean dataBeen) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		
		Massage msg = new Massage();	
		//String tt = URLDecoder.decode(request.getParameter("title"),"utf-8");
		msg.setTitle(request.getParameter("title"));
		//String au = URLDecoder.decode(request.getParameter("author"),"utf-8");
		msg.setAuthor(request.getParameter("author"));
		//String ty = URLDecoder.decode(request.getParameter("type"),"utf-8");
		msg.setType(request.getParameter("type"));
		//String ti = URLDecoder.decode(request.getParameter("time"),"utf-8");
		//msg.setTime(request.getParameter("time"));
		//String m = URLDecoder.decode(request.getParameter("msg"),"utf-8");
		msg.setMsg(request.getParameter("msg"));
		msg.setId(Integer.parseInt(request.getParameter("id")));
		
		Util Util =new Util();
		try {
				Util.update(msg);
				//response.sendRedirect("success.jsp");
				
		} catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
			//response.sendRedirect("FiledView.jsp");
		}
		queryNews(request,response,dataBeen);
		//response.sendRedirect(".jsp");
	}

	/**
	 * @param request
	 * @param response
	 * @param dataBeen
	 */
	private void insert(HttpServletRequest request, HttpServletResponse response, ManagerBean dataBeen) throws Exception{
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gbk");
		
		
		Massage msg = new Massage();	
		//String tt = URLDecoder.decode(request.getParameter("title"),"utf-8");
		msg.setTitle(request.getParameter("title"));
		//String au = URLDecoder.decode(request.getParameter("author"),"utf-8");
		msg.setAuthor(request.getParameter("author"));
		//String ty = URLDecoder.decode(request.getParameter("type"),"utf-8");
		msg.setType(request.getParameter("type"));
		//String ti = URLDecoder.decode(request.getParameter("time"),"utf-8");
		//msg.setTime(request.getParameter("time"));
		//String m = URLDecoder.decode(request.getParameter("msg"),"utf-8");
		msg.setMsg(request.getParameter("msg"));
		
		//msg.setId(Integer.parseInt(request.getParameter("id")));
		
		Util Util =new Util();
		try {
			
			Util.insert(msg);
				//response.sendRedirect("success.jsp");
				
		} catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
			//response.sendRedirect("FiledView.jsp");
		}
		queryNews(request,response,dataBeen);
	}

}
