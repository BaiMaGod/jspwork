<%@ page language="java" contentType="text/html; charset=gbk"  pageEncoding="gbk"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gbk">
<title>作者</title>
<link rel="icon" type="image/png" href="image/猿.png"/>
<style type="text/css">
	#author{width: 400px;height:480px;background-color: blueviolet;float: left;border-radius: 20px;}
	
	.news{width: 930px;height:480px;background-color: cornflowerblue;float: left;margin-left: 10px;margin-right: -12px;border-radius: 20px;}
	.news input{width: 350px;height: 80px;background-color:orangered;border: none;border-radius: 5px;margin-top: 50px;font-size: 30px;font-family: "楷体";color: white;font-weight: bold;}
	.news input:active{background-color:red;}
	.news input:hover{background-color:red;font-size: 40px;cursor:pointer}
</style>
</head>
<body bgcolor="coral">
	<div id="" style="height: 100px;">
		<a href="小猿新闻.jsp"style="margin-left: 1200px;margin-top: 5px;text-decoration: none;font-size: 20px;">首页</a>
    	<center><img src="image/小猿新闻.png" style="margin-top: 0px;"/></center>			
  </div>
   <div id="author">
   	<center>
   		<br />
   		<h1>作者</h1>
   		<h3>账号</h3>
   		<br />
   		<h3>发布新闻总数:</h3>
   		<h1>99</h2>
   		<h3>获得称号：</h3>
   		<h3 style="color: red;">新闻达人 &nbsp; 责任小编 &nbsp; 追风捕影</h3>
   		<h3 style="color: red;">神预测 &nbsp;&nbsp;&nbsp;&nbsp; 年度最佳 &nbsp; 日进斗金</h3>
   	</center>
   </div>
   <div class="news">
   	<center>
   		<a href="editNew.jsp"><input type="button"  value="发布新闻" /></a><br />
   		<a href="myNewView.jsp"><input type="button"  value="查看已发" /></a><br />
   		<a href="小猿新闻.jsp"><input type="button"  value="查看所有" /></a>
   	</center>
   </div>
</body>
</html>