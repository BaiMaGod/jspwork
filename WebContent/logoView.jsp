<%@page contentType="text/html"%>
<%@page pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>СԳ����</title>
    </head>
    <body bgcolor="bisque">
<%
	String islogin = session.getAttribute("islogin").toString();
	if(islogin=="1"){
		out.print("<a id='denglu' href='' style='margin-left: 90%;color:blue;text-decoration: none;' onclick='login(this);''>��������</a>");
	}else{
		out.print("<a id='denglu' href='' style='margin-left: 90%;color:blue;text-decoration: none;' onclick='login(this);''>С���¼</a>");
	}
%>
		<!-- <a href="" style="margin-left: 90%;color:blue;text-decoration: none;" onclick="login();">С���¼</a> -->
    	<center><img src="image/СԳ����.png" style="height: 50px;margin: -11px;"/></center>
		<hr />
 	</body>
</html>
<script type="text/javascript">
	function login(e) {
		var a = e.innerHTML;
		if(a=="��������")
			window.parent.location.href = "AuthorView.jsp";
		else 
			window.parent.location.href = "loginView.jsp";
	}
</script>