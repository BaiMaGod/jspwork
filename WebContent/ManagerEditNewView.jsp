<?xml version="1.0" encoding="gbk" ?>
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>小猿新闻管理员发布</title>
<link rel="icon" type="image/png" href="image/猿.png"/>
</head>
 <body bgcolor="coral">
   	<center>
   	<form action="manageServlet?execute=4" method="post" style="margin-top: 10px;">
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
</body>
</html>