<%@page contentType="text/html"%>
<%@page pageEncoding="gbk"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
		request.setCharacterEncoding("gbk");
		
		String t = request.getParameter("id");
		//String title = new String(t.getBytes("gbk"));
		
%>
		<center><h1>ȷ��Ҫɾ��<%= t %>?</h1></center>
		
 	</body>
</html>