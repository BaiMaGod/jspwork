<%@page contentType="text/html"%>
<%@page pageEncoding="GBK"%>
<!DOCTYPE html>
<%
	if(session.getAttribute("islogin")==null)
		session.setAttribute("islogin","0");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
        <title>小猿新闻</title>
        <link rel="icon" type="image/png" href="image/猿.png"/>
        
    </head>
    <frameset rows="80px,*" cols="*" style="dcor" frameborder="no" framespacing="1">
		<frame id="logo" src="logoView.jsp"/>
		<frameset cols="15%,*,30%" style="margin-top: 1%;">
			<frame name="type" id="type" src="typeView.jsp">  
			<frame name="news" id="news" src="newsView.jsp" >   
			<frame name="search id="search" src="searchView.jsp">  
		</frameset> 
	</frameset> 
    <body>
 	</body>
</html>
