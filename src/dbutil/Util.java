package dbutil;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

import mybeen.been.Massage;

/**
 * @author Administrator
 *
 */
public class Util {
	private Connection conn;
	private PreparedStatement ps;
	
	public Util() {
		
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/jsp?serverTimezone=UTC&useSSL=false";
		String user="root";
		String pwd="qwertyuiop123.";
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,user,pwd);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
	
	public int getMassageCount() throws SQLException {
		// TODO 自动生成的方法存根
		String sql="select count(*) from news";
		ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		rs.next();
		return rs.getInt(1);
	}
	
	public int insert(Massage msg) throws SQLException{
		String sql="insert into news(title,author,type,msg,time) values(?,?,?,?,now())";
		ps=conn.prepareStatement(sql);
		ps.setString(1, msg.getTitle());
		ps.setString(2, msg.getAuthor());
		ps.setString(3, msg.getType());
		ps.setString(4, msg.getMsg());
		ps.executeUpdate();
		
		return 1;
	}
	
	public Massage queryNewByAuthor(String id) throws SQLException{
		Massage msg = new Massage();
		int Id = Integer.parseInt(id);
		String sql = "select * from news where id=? and Author=?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, Id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			msg.setTitle(rs.getString(1));
			msg.setAuthor(rs.getString(2));
			msg.setType(rs.getString(3));
			msg.setMsg(rs.getString(4));
			msg.setTime(rs.getString(5));
			msg.setId(rs.getInt(6));
		}
		return msg;
	}
	
	
	public List<Massage> queryByAuthor(String type) throws SQLException{
		LinkedList<Massage> msgList = new LinkedList<>();
		String sql;
		if("全部".equals(type)) {
			sql="select * from news where Author=? order by time desc";
			ps=conn.prepareStatement(sql);
		}
		else if("更多".equals(type)) {
			sql="select * from news where type!='热点' and type!='社会'  and type!='娱乐'  and type!='游戏' and type!='体育' and Author=? order by time desc";
			ps=conn.prepareStatement(sql);
		}
		else {	
			sql="select * from news where type=? and Author=? order by time desc";
			ps=conn.prepareStatement(sql);
			if(type!=null) ps.setString(1, type);
			else 	ps.setString(1, "热点");		
		}
		ResultSet rs=ps.executeQuery();
		Massage msg=null;
		while(rs.next()) {
			msg=new Massage();
			msg.setTitle(rs.getString(1));
			msg.setAuthor(rs.getString(2));
			msg.setType(rs.getString(3));
			msg.setMsg(rs.getString(4));
			msg.setTime(rs.getString(5));
			msg.setId(rs.getInt(6));
			msgList.add(msg);
		}
		return msgList;
	}
	
	
	public Massage queryNew(String id) throws SQLException{
		Massage msg = new Massage();
		System.out.println(id+"\n-");
		int Id = Integer.parseInt(id);
		String sql = "select * from news where id=?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, Id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			msg.setTitle(rs.getString(1));
			msg.setAuthor(rs.getString(2));
			msg.setType(rs.getString(3));
			msg.setMsg(rs.getString(4));
			msg.setTime(rs.getString(5));
			msg.setId(rs.getInt(6));
		}
		return msg;
	}
	
	
	public List<Massage> query(String type) throws SQLException{
		LinkedList<Massage> msgList = new LinkedList<>();
		String sql;
		if("全部".equals(type)) {
			sql="select * from news order by time desc";
			ps=conn.prepareStatement(sql);
		}
		else if("更多".equals(type)) {
			sql="select * from news where type!='热点' and type!='社会'  and type!='娱乐'  and type!='游戏' and type!='体育' order by time desc";
			ps=conn.prepareStatement(sql);
		}
		else {	
			sql="select * from news where type=? order by time desc";
			ps=conn.prepareStatement(sql);
			if(type!=null) ps.setString(1, type);
			else 	ps.setString(1, "热点");		
		}
		ResultSet rs=ps.executeQuery();
		Massage msg=null;
		while(rs.next()) {
			msg=new Massage();
			msg.setTitle(rs.getString(1));
			msg.setAuthor(rs.getString(2));
			msg.setType(rs.getString(3));
			msg.setMsg(rs.getString(4));
			msg.setTime(rs.getString(5));
			msg.setId(rs.getInt(6));
			msgList.add(msg);
		}
		return msgList;
	}
	
	public int update(Massage msg) throws SQLException{
		String sql = "update news set title=?,author=?,type=?,msg=? where id=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1,msg.getTitle());
		ps.setString(2,msg.getAuthor());
		ps.setString(3,msg.getType());
		ps.setString(4,msg.getMsg());
		ps.setInt(5,msg.getId());
		ps.executeUpdate();
		return 1;
	}
	
	public int delete(String id) throws SQLException{
		int Id = Integer.parseInt(id);
		String sql = "delete from news where id=?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1,Id);
		ps.executeUpdate();
		return 1;
	}
}
