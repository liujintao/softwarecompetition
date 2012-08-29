<%-- 
    Document   : passsummer
    Created on : 2009-8-22, 21:12:25
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="passsummer" scope="page" class="com.ytu.xiao.DatabaseConnection"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String s=request.getParameter("id");
            String p=request.getParameter("pass");
           passsummer.passsummer(s, p);
             response.sendRedirect("summer.jsp");
         %>
    </body>
</html>
