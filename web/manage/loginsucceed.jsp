<%-- 
    Document   : loginsucceed
    Created on : 2009-7-24, 17:28:39
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.Worker"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
          <h1 style="padding-top:50px; padding-left:50px;">
        <%Worker user=(Worker)(session.getAttribute("user")); %>
        欢迎进入大赛管理系统,<span style="color:#FF0000"><%=user.getAccount()%></span></h1>
        </center>
    </body>
</html>
