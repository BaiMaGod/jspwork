<?xml version="1.0" encoding="gbk" ?>
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>СԳ���Ź���Ա����</title>
<link rel="icon" type="image/png" href="image/Գ.png"/>
</head>
 <body bgcolor="coral">
   	<center>
   	<form action="manageServlet?execute=4" method="post" style="margin-top: 10px;">
   		<input name="execute" style="display: none;" value="insert"/>
   		<input type="text" disabled="disabled" value="��������" style="background: transparent;font-size: 40px;color: red;border: none;font-weight: bold;font-family: '����';margin-left: 21%;"/>
   		<table name="s" border="0"  cellspacing="10" style="background-color:coral;width: 80%;" >
			<tr>
				<td ><h2 style="font-family: ����;font-weight:bold;margin: 0px;width:120px;">���⣺</h2></td>
				<td><input type="text" name="title" style="height: 40px;width:100%;margin: 0px;font-size: 25px;" id="name" value=""></td>
			</tr>
			<tr>
				<td><h2 style="font-family: ����;font-weight:bold;margin: 0px"">���ͣ�</h2></td>
				<td><input type="text" name="type" style="height: 40px;width: 100%;font-size: 20px;" id="email" value=""> </td>
			</tr>
			<tr>
				<td><h2 style="font-family: ����;font-weight:bold;margin: 0px"">���ߣ�</h2></td>
				<td><input type="text" name="author" style="height: 40px;width:100%;font-size: 15px;" id="title" value=""> </td>
			</tr>
			<tr>
				<td><h2 style="font-family: ����;font-weight:bold;margin: 0px"">�������ݣ�</h2></td>
				<td><textarea name="msg" id="msg" rows="18" cols="130"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="ȷ�Ϸ���" style="height: 40px;width: 120px;margin-right:5px;font-family: '����'; font-size: 20px;font-weight: bold;"></input>
					<a href="AuthorView.jsp" style="margin: 40px;text-decoration: none;font-size: 25px;">����</a>
					<input type="reset" value="������д" style="height: 40px;width: 120px;font-family: '����'; font-size: 20px;font-weight: bold;" ></input>
		 		</td>
			</tr>
		</table>
   	</form>
   	</center>
</body>
</html>