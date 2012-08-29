<%--
    Document   : passyoung
    Created on : 2009-8-22, 19:58:41
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
  <jsp:useBean id="passyoung" scope="page" class="com.ytu.xiao.DatabaseConnection"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            String s=request.getParameter("id");
            String p=request.getParameter("pass");
           passyoung.passyoung(s, p);
             response.sendRedirect("young.jsp?"+request.getParameter("jumpPage"));
         %>
    </body>
</html>
