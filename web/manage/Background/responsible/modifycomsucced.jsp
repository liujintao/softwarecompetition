<%-- 
    Document   : modifycomsucced
    Created on : 2009-7-26, 8:39:03
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
  <jsp:useBean id="modifycompany" scope="request" class="com.ytu.xiao.DatabaseConnection"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <% if( modifycompany.modifyCompany((String)(session.getAttribute("comid")),(String)(request.getParameter("comname")))==1)
        response.sendRedirect("company.jsp");
            else {
                                         %>
        修改失败！请稍后再试
                  <% } %>
    </body>
</html>
