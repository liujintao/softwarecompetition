<%@ page contentType="text/html;charset=utf-8" %>

<%@ page info="database handler"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="news.database.*"%>
<%@ page import="news.news.*"%>
<%@ page import="news.util.*"%>
<%@ page import="news.admin.*"%>

<%//验证用户是否有权限
	int id = Integer.parseInt(request.getParameter("id"));
	DispNews dispnews = new DispNews();
	dispnews.setID(id);
	News news = dispnews.idToNews();	%>
	<%DispMaster dispmaster = new DispMaster();
	%>

<%//删除
	NewsControl newscontrol= new NewsControl();
	newscontrol.setID(id);
	newscontrol.delnews();
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<meta HTTP-EQUIV=REFRESH CONTENT='0; URL=main.jsp'>
<title>欢迎光临</title>
<link rel="stylesheet" href="../../../admin/Background/css/news.css" type="text/css" media="screen">
</head>
<body>
	<span id=yu></span><a href=javascript:countDown></a>
	<script>
	function 
	countDown(secs){yu.innerText=secs;if(--secs>0)setTimeout("countDown("+secs+")",1000);}countDown(0);
	</script>
</body>
</html>
