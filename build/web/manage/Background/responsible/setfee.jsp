<%--
    Document   : setfee
    Created on : 2009-8-22, 17:53:08
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
  <jsp:useBean id="setfee" scope="page" class="com.ytu.xiao.DatabaseConnection"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
            String id=request.getParameter("id");
             String fee=request.getParameter("fee");
              String type=request.getParameter("type");
              try{
            setfee.setfee(id, fee, type);
         }
              catch(Exception e){
                  }
              finally{
                response.sendRedirect("getfee.jsp?type="+type);
                  }
         %>
         sadasdad
    </body>
</html>

