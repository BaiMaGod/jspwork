<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gbk">
<title>��¼</title>
<style type="text/css">
	#tab td{font-size: 30px;height: 80px;width: 50px;}
	#login{width: 350px;height: 50px;background-color:orangered;border: none;border-radius: 5px;font-size: 20px;color: white;}
	#login:active{background-color:red;}
	#login:hover{background-color:red;}
</style>
</head>
<body bgcolor="bisque">
	<div id="" style="height: 100px;">
		<a href="СԳ����.jsp"style="margin-left: 1200px;margin-top: 5px;text-decoration: none;font-size: 20px;">��ҳ</a>
    	<center><img src="image/СԳ����.png" style="margin-top: 0px;"/></center>			
 	 </div>
	<center>
	<form action="loginView.jsp" method="post" style="margin-top: 80px;">
		<table class="tab" border="0" cellspacing="10" cellpadding="10">
			<tr>
				<td>�˺ţ�</td>
				<td><input type="text" name="num" style="height: 40px;width: 250px;"/></td>
			</tr>
			<tr>
				<td>���룺</td>
				<td><input type="password" name="psw" style="height: 40px;width: 250px;"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="��¼" id="login"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="ע��" id="login"/></td>
			</tr>
		</table>
	</form>
	</center>
<%
	request.setCharacterEncoding("gbk");
	
	String num = request.getParameter("num");
	String psw = request.getParameter("psw");
	//out.print(num+"<br>"+psw);
	
	if("11111".equals(num)&&"123456".equals(psw)){
		session.setAttribute("islogin", "1");
%>
		<jsp:forward page="AuthorView.jsp"></jsp:forward>
<% 
	}
%>
</body>
</html>