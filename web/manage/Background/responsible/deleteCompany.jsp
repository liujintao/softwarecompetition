<%-- 
    Document   : deleteCompany
    Created on : 2009-7-26, 8:15:29
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <jsp:useBean id="deletcompany" scope="page" class="com.ytu.xiao.DatabaseConnection"/>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>JSP Page</title>
    </head>
    <body>
        <%
        deletcompany.deleteCompany((String)(request.getParameter("comid")));
        response.sendRedirect("company.jsp");
         %>

    </body>
</html>
