<%@page contentType="text/html"%>
<%@page pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>小猿新闻</title>
    </head>
    <body bgcolor="bisque">
<%
	String islogin = session.getAttribute("islogin").toString();
	if(islogin=="1"){
		out.print("<a id='denglu' href='' style='margin-left: 90%;color:blue;text-decoration: none;' onclick='login(this);''>作者中心</a>");
	}else{
		out.print("<a id='denglu' href='' style='margin-left: 90%;color:blue;text-decoration: none;' onclick='login(this);''>小编登录</a>");
	}
%>
		<!-- <a href="" style="margin-left: 90%;color:blue;text-decoration: none;" onclick="login();">小编登录</a> -->
    	<center><img src="image/小猿新闻.png" style="height: 50px;margin: -11px;"/></center>
		<hr />
 	</body>
</html>
<script type="text/javascript">
	function login(e) {
		var a = e.innerHTML;
		if(a=="作者中心")
			window.parent.location.href = "AuthorView.jsp";
		else 
			window.parent.location.href = "loginView.jsp";
	}
</script>