<%@page contentType="text/html"%>
<%@page pageEncoding="gbk"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
        <title>新闻发布</title>
        <link rel="icon" type="image/png" href="image/猿.png"/>
    </head>
    <body bgcolor="coral">
    	<center>
    	<form action="authorServlet" method="post" style="margin-top: 10px;">
    		<input name="execute" style="display: none;" value="insert"/>
    		<input type="text" disabled="disabled" value="发布新闻" style="background: transparent;font-size: 40px;color: red;border: none;font-weight: bold;font-family: '楷体';margin-left: 21%;"/>
    		<table name="s" border="0"  cellspacing="10" style="background-color:coral;width: 80%;" >
				<tr>
					<td ><h2 style="font-family: 楷体;font-weight:bold;margin: 0px;width:120px;">标题：</h2></td>
					<td><input type="text" name="title" style="height: 40px;width:100%;margin: 0px;font-size: 25px;" id="name" value=""></td>
				</tr>
				<tr>
					<td><h2 style="font-family: 楷体;font-weight:bold;margin: 0px"">类型：</h2></td>
					<td><input type="text" name="type" style="height: 40px;width: 100%;font-size: 20px;" id="email" value=""> </td>
				</tr>
				<tr>
					<td><h2 style="font-family: 楷体;font-weight:bold;margin: 0px"">作者：</h2></td>
					<td><input type="text" name="author" style="height: 40px;width:100%;font-size: 15px;" id="title" value=""> </td>
				</tr>
				<tr>
					<td><h2 style="font-family: 楷体;font-weight:bold;margin: 0px"">新闻内容：</h2></td>
					<td><textarea name="msg" id="msg" rows="18" cols="130"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="确认发布" style="height: 40px;width: 120px;margin-right:5px;font-family: '楷体'; font-size: 20px;font-weight: bold;"></input>
						<a href="AuthorView.jsp" style="margin: 40px;text-decoration: none;font-size: 25px;">返回</a>
						<input type="reset" value="重新填写" style="height: 40px;width: 120px;font-family: '楷体'; font-size: 20px;font-weight: bold;" ></input>
			 		</td>
				</tr>
			</table>
    	</form>
    	</center>
<%
	/* request.setCharacterEncoding("gbk");
	
	String title = request.getParameter("title");
	String type = request.getParameter("type");
 	String author = request.getParameter("author");
	String msg = request.getParameter("msg");
	
	if("".equals(title)||title==null||title.length()==0||"".equals(type)||"".equals(author)||"".equals(msg)){
		
	}else{
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/jsp?serverTimezone=UTC&useSSL=false";
		String user="root";
		String pwd="qwertyuiop123.";
		
		try {
			Class.forName(driver);
			Connection conn=DriverManager.getConnection(url,user,pwd);
		
			String sql="insert into news(title,author,type,msg,time) value(?,?,?,?,now())";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, author);
			ps.setString(3, type);
			ps.setString(4, msg);
			ps.executeUpdate(); 
		}catch(SQLException e){
			
		}
	} */
%>
 	</body>
</html>