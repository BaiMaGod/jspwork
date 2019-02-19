<%@page contentType="text/html"%>
<%@page pageEncoding="gbk"%>
<jsp:useBean id="dataBeen" type="mybeen.been.DataBeen" scope="session" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
        <title>小猿新闻</title>
        <style type="text/css">
        	#new{width:90%;margin-left:4%;background-color: floralwhite;}
        	#msg{margin-top:40px;font-size: 18px;}
        </style>
    </head>
<%
	/* request.setCharacterEncoding("GBK");

	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String type = request.getParameter("type");
	String author = request.getParameter("author");
	String time = request.getParameter("time");
	String msg = request.getParameter("msg"); */
%>
    <body bgcolor="bisque">
    	<div id="" style="height: 50px;background-color:coral;">
    		<a href="newsView.jsp"style="margin-left: 20px;margin-top: 50px;text-decoration: none;font-size: 20px;">< 返回</a>
    		<!-- <center><img src="image/小猿新闻.png" style="margin-top: 1px;"/></center> -->
			
    	</div>
    	<div id="new">
    		<h1 style="color: blue"><jsp:getProperty name="dataBeen" property="title"/></h1>
	    	<div >
				<a href="作者相关.jsp" style="text-decoration: none;color: blue;"><jsp:getProperty name="dataBeen" property="author"/></a> |
				<input type="button" disabled="false" value="<jsp:getProperty name="dataBeen" property="ty"/>" />
				<span> | <jsp:getProperty name="dataBeen" property="time"/></span>
				<a href="投诉.jsp" style="text-decoration: none;color: blue;"> | 投诉</a>
	    	</div>
	    	<div id="msg"><jsp:getProperty name="dataBeen" property="msg"/></div>
    	</div>
 	</body>
</html>