<%@ page language="java" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="gbk">
<title>小猿新闻</title>
<style type="text/css">
	.typemenu{margin-left: 1%;}
    .typemenu td{width: 120px;height: 40px;font-size: 25px;font-family: "楷体";color: red;font-weight: bold;}
    .typemenu td:hover{background-color:red;cursor:pointer;color: white;font-size: 30px;}
    .typemenu td:active{background-color:red;cursor:pointer;color: white;}
    .typemenu td:visited{color: red;}
    
</style>
</head>
<body bgcolor="bisque">
	<center>
	<table class="typemenu">
		<tr><td class="menu" onclick="getType('全部');"><center>全部</center></td></tr>
		<tr><td class="menu" onclick="getType('热点');"><center>热点</center></td></tr>
		<tr><td class="menu" onclick="getType('社会');"><center>社会</center></td></tr>
		<tr><td class="menu" onclick="getType('娱乐');"><center>娱乐</center></td></tr>
		<tr><td class="menu" onclick="getType('游戏');"><center>游戏</center></td></tr>
		<tr><td class="menu" onclick="getType('体育');"><center>体育</center></td></tr>
		<tr><td class="menu" onclick="getType('更多');"><center>更多</center></td></tr>
	</table>
	</center>
</body>
</html>
<script type="text/javascript">
	function getType(t){
		var type = encodeURI(encodeURI(t));
		var url = "massageServlet?execute=1&type="+type;
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		
		xmlhttp.open("GET",url,true);
		xmlhttp.send();
		
		setTimeout("refresh()",100);
		//window.parent.news.location.href = "massageServlet?type=0";
	}
	function refresh(){
		//window.parent.news.location.reload();
		window.parent.news.location.href="newsView.jsp";
	}
</script>