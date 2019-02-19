<%@page contentType="text/html"%>
<%@page pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
        	#search{height: 37px;width: 250px;border:orangered;border-radius: 5px;}
        	#btnsearch{background-color:orangered;border:none;height: 40px;width: 70px;color: white;margin-left: -6px;border-radius: 5px;}
        	#btnsearch:hover{background-color:red;cursor: pointer;}
        	
        	.tab{margin-top: 5px;}
        	.tab tr:hover{background-color:antiquewhite;cursor: pointer;}
        	.tab a{text-decoration: none;color: red;font-weight: bold;}
        	.tab span{font-style: oblique;font-weight: bold;}
        </style>
    </head>
    <body bgcolor="bisque">
    	<input type="text" name="search" id="search" placeholder="大家都在搜：王思聪 秒删"/>
    	<input type="button" value="搜索" id="btnsearch"/>
    	<br />
    	<table width="250px" style="margin-top: 5px;">
			<tr bgcolor="coral"><td style="font-family: '楷体';color: red;font-size:40px;border-radius: 5px;"align="center">热搜</td></tr>
		</table>
		<table class="tab" border="0" cellspacing="0" cellpadding="8" width="250px">
			<tr> <td style="width: 10px;"><span style="color: red;">1</span></td><td><a href="http://www.dygang.net/ys/20170221/CKXT.htm"  target="_blank">刺客信条</a></td></tr>
			<tr> <td style="width: 10px;"><span style="color: red;">2</span></td><td><a href="http://www.dygang.net/ys/20170620/37704.htm"  target="_blank">银河护卫队2</a> </td></tr>
			<tr> <td style="width: 10px;"><span style="color: red;">3</span></td><td><a href="http://www.dygang.net/ys/20170810/38113.htm"  target="_blank">绝世高手</a></td></tr>
			<tr> <td style="width: 10px;"><span style="color: orangered;">4</span></td><td><a href="http://www.dygang.net/ys/20170727/38028.htm"  target="_blank">绣春刀II：修罗战场</a> </td></tr>
			<tr> <td style="width: 10px;"><span style="color: orangered;">5</span></td><td><a href="http://www.dygang.net/ys/20170703/37769.htm"  target="_blank">变形金刚5：最后的骑士</a> </td></tr>
			<tr> <td style="width: 10px;"><span style="color: orangered;">6</span></td><td><a href="http://www.dygang.net/ys/20170615/37680.htm"  target="_blank">神奇女侠</a></td></tr>
			<tr> <td style="width: 10px;"><span style="color: orangered;">7</span></td><td><a href="http://www.dygang.net/ys/20170608/37614.htm"  target="_blank">加勒比海盗5：死无对证</a> </td></tr>
			<tr> <td style="width: 10px;"><span style="color: orangered;">8</span></td><td><a href="http://www.dygang.net/ys/20170802/38059.htm"  target="_blank">明月几时有</a></td></tr>
			<tr> <td style="width: 10px;"><span style="color: orangered;">9</span></td><td><a href="http://www.dygang.net/ys/20170512/37323.htm"  target="_blank">记忆大师</a> </td></tr>
			<tr> <td style="width: 10px;"><span style="color: orangered;">10</span></td><td><a href="http://www.dygang.net/ys/20161013/35677.htm"  target="_blank">湄公河行动</a> </td></tr>
		</table>
 	</body>
</html>