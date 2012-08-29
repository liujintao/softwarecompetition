<%-- 
    Document   : Deletesucceed
    Created on : 2009-7-25, 11:09:36
    Author     : xiao
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="worker" scope="request" class="com.ytu.xiao.Worker">
<jsp:setProperty name="worker" property="*"/>
</jsp:useBean>
<jsp:useBean id="delWorker" class="com.ytu.xiao.DatabaseConnection" scope="page"/><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<style type="text/css">
<!--
.STYLE1 {
	color: #00FF00
}
.STYLE2 {
	color: #FF0000
}
-->
</style>
</head>
<body>
<%   if(delWorker.delete((String)(request.getParameter("account")))==1){ %>
<center>
  <h2  class="STYLE1">删除成功!</h2>
</center>
<% }else{ %>
<center >
  <h2 class="STYLE2"> 删除失败!</h2>
</center>
<% } %>
</body>
</html>
