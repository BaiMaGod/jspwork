<?xml version="1.0" encoding="gbk" ?>
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>发布失败</h3>
		<span>3</span>秒后自动返回...
	</center>
</body>
</html>
<script type="text/javascript">
	setTimeout("window.parent.location.href = 'ManagerServlet.jsp';",1000);
</script>