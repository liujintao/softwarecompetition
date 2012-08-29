<%--
    Document   : welcome
    Created on : 2009-7-18, 17:53:19
    Author     : xiao
--%>

<%@page  contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" import="com.ytu.xiao.User,java.io.*,java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <title>JSP Page</title>
    </head>
    <body>

        <% User user=(User)session.getAttribute("user");  %>
        <h1>Hello World!</h1>
        <%=user.getAccount()%>
        <%

        %>
        <br>
    </body>
</html>
