<%--
    Document   : passschool
    Created on : 2009-7-28, 17:32:16
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
  <jsp:useBean id="passschool" scope="page" class="com.ytu.xiao.DatabaseConnection"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
            String s=request.getParameter("schoolname");
            String p=request.getParameter("pass");
            passschool.passschool(s,p);
             response.sendRedirect("school.jsp?jumpPage="+request.getParameter("jumpPage"));
         %>

    </body>
</html>
