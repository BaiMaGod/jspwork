<%@ page language="java" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<!DOCTYPE html>
<jsp:useBean id="managerBean" type="mybeen.been.ManagerBean" scope="session" />
<html>
<head>
	<meta charset="gbk">
	<title>СԳ���Ź���</title>
	<link rel="icon" type="image/png" href="image/Գ.png"/>
	<style type="text/css">
    	.div{width:800px;height:121px;margin-top: 5px;position: relative;border-bottom:dashed;border-bottom-color: antiquewhite;}
    	.div img{width:192px;height: 120px;float: left;}
    	.div:hover{background: antiquewhite;}
    	
    	.div2 {width:500px;height:121px;font-weight: bold;float: left;margin-left: 10px;}
    	.div2 a{text-decoration: none;font-size: 25px;width: 500px;float: left;}
    	.div2 span{position:absolute;font-size: 18px;float: left;font-family: "����";bottom: -5px;}
    	
    	.div2 div{position: absolute;bottom: 5px;width: 400px;}
    	.div2 div a{position:absolute;font-size: 18px;float: left;font-family: "����";bottom: 20px;left: 55px;width: 80px;}
    	.div2 div input{position: absolute;width: 40px;height: 25px;border-color:red;color: red;background: transparent;bottom: 20px;}
    	
    	.div3 {width:80px;height:121px;font-weight: bold;float: left;margin-left: 10px;}
    	.div3 input{width: 75px;height: 50px;margin-top: 8px;font-size: 20px}
    	
    </style>
</head>
<body bgcolor="bisque">	
	<a name="dingbu" href></a>
	<div id="" style="height: 100px;background-color: bisque;">
	</div>
	
	<center>
		<a href="manageServlet?execute=1"><input type="submit" value="ˢ��" style="height: 40px;width: 60px;"/></a>
		<a href="ManagerEditNewView.jsp"><input type="submit" value="����" style="height: 40px;width: 60px;"/></a>
	</center>
	<form action="manageServlet">
	<div style="margin-left: 300px">
   	 	
		<div class="div">
    		<img src="image/new.jpg"/>
    		<div class="div2">
    			<a href="">СԳ����ʾ������</a> 
    			<br />
    			<div>
    				<input type="button" disabled="false" value="���" />
    				<a href="">Ԭ��</a>
    				<br />
    				<span>����ʱ��</span>
    			</div>
    		</div>
    		<div class="div3">
   				<a href="managerServlet?execute=3&id=7"><input type="button" value="ɾ��" /></a>
   				<a href="updateView.jsp?id=7"><input type="button" value="�޸�" /></a>
			</div>
		</div>
		
		
		<jsp:getProperty name="managerBean" property="news"/>

		
	</div>
	</form>
</body>
</html>