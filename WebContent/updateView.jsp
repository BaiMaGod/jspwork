<%@page contentType="text/html"%>
<%@page pageEncoding="gbk"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("gbk");	

	String i = request.getParameter("id");
	int id = Integer.parseInt(i);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>СԳ����</title>
        <link rel="icon" type="image/png" href="image/Գ.png"/>
    </head>
    <body bgcolor="coral">
    	<center>
    	<form action="manageServlet?execute=5&id=<%= id %>" method="post" style="margin-top: 10px;">
    		<table name="s" border="0"  cellspacing="10" style="background-color:coral;width: 80%;" >
				<tr>
					<td ><h2 style="font-family: ����;font-weight:bold;margin: 0px;width:120px;">���⣺</h2></td>
					<td><input type="text" name="title" style="height: 50px;width:100%;margin: 0px;font-size: 25px;" id="name" value=""></td>
				</tr>
				<tr>
					<td><h2 style="font-family: ����;font-weight:bold;margin: 0px"">���ͣ�</h2></td>
					<td><input type="text" name="type" style="height: 50px;width: 100%;font-size: 20px;" id="email" value=""> </td>
				</tr>
				<tr>
					<td><h2 style="font-family: ����;font-weight:bold;margin: 0px"">���ߣ�</h2></td>
					<td><input type="text" name="author" style="height: 50px;width:100%;font-size: 15px;" id="title" value=""> </td>
				</tr>
				<tr>
					<td><h2 style="font-family: ����;font-weight:bold;margin: 0px"">�������ݣ�</h2></td>
					<td><textarea name="msg" id="msg" rows="18" cols="130"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="ȷ���޸�" style="height: 40px;width: 120px;margin-right:5px;font-family: '����'; font-size: 20px;font-weight: bold;"></input>
						<a href="ManagerView.jsp" style="margin: 40px;text-decoration: none;font-size: 25px;">����</a>
						<input type="reset" value="������д" style="height: 40px;width: 120px;font-family: '����'; font-size: 20px;font-weight: bold;" ></input>
			 		</td>
				</tr>
			</table>
    	</form>
    	</center>

 	</body>
</html>