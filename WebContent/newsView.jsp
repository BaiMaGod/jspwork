<%@page contentType="text/html"%>
<%@page pageEncoding="GBK"%>
<jsp:useBean id="dataBeen" class="mybeen.been.DataBeen" scope="session" />
<!DOCTYPE html>
<html style="overflow: hidden;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
        <title>СԳ����</title>
        <link rel="icon" type="image/png" href="image/����.png"/>
        <style type="text/css">
        	.div{width:2500px;overflow-x: hidden;height: 120px;margin-top: 5px;position: relative;border-bottom:dashed;border-bottom-color: antiquewhite;}
        	.div:hover{background: antiquewhite;}
        	.div a{text-decoration: none;}
        	.div input{position: absolute;width: 40px;height: 25px;border-color:red;color: red;background: transparent;bottom: 20px;}
        	.div img{width:192px;height: 120px;float: left;}
        	
        	.div div{font-weight: bold;float: left;margin-left: 10px;}
        	.div div a{font-size: 25px;width: 500px;margin-left: 10px;float:left;}
        	
        	.div div div{position: absolute;bottom: 5px;width: 400px;}
        	.div div div a{position:absolute;font-size: 18px;float: left;font-family: "����";bottom: 20px;left: 55px;width: 80px;}
        	.div span{position:absolute;font-size: 18px;float: left;font-family: "����";bottom: -5px;}
        	
        	#ding{width: 40px;height: 40px;}
        	#refresh{position: absolute;bottom:60px;;right:20px;
        			width: 40px;height: 40px;border:none;background:url("image/ˢ��.jpg");}
        	#refresh:hover {cursor:pointer;}
        </style>
    </head>
    <body bgcolor="bisque" >
    	<form action="massageServlet" method="post">
    	<div style="height: 500px;width: 800px;overflow-x: hidden;overflow-y: auto;">
    		<a name="dingbu" href></a>
    		
    		<div class="div">
	    		<img src="image/new.jpg"/>
	    		<div>
	    			<a href="new.jsp">СԳ����ʾ������</a> 
	    			<br />
	    			<div>
	    				<input type="button" disabled="false" value="���" />
	    				<a href="">Ԭ��</a>
	    				<br />
	    				<span>����ʱ��</span>
	    			</div>
	    		</div>
    		</div>
    		
    		<%-- <jsp:getProperty name="dataBeen" property="type"/> --%>
			<jsp:getProperty name="dataBeen" property="news"/>
    		
	    	<div class="div">
	    		<img src="image/new.jpg"/>
	    		<div>
	    			<a href="new.jsp">СԳ����ʾ������</a> 
	    			<br />
	    			<div>
	    				<input type="button" disabled="false" value="���" />
	    				<a href="">Ԭ��</a>
	    				<br />
	    				<span>����ʱ��</span>
	    			</div>
	    		</div>
	    	</div>
	    	
	    	<input id="refresh" type="submit" value="">
    		<a href="#dingbu" style="position: absolute;bottom:20px;;right:20px;"> <img src="image/���ض���.jpg" id="ding" /></a>
    	</div>
    	</form>
 	</body>
</html>