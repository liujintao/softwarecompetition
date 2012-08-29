<%-- 
    Document   : welcome
    Created on : 2009-7-20, 10:35:51
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>正在登陆，请稍后</title>
    </head>
    <body>

        <%
        User user=(User)session.getAttribute("user");
        %>
        <div>       
           
              欢迎光临， <%=user.getAccount()%>
              <%
                     response.sendRedirect("/websystem/login/loginframe.jsp");
              %>

        </div>
    </body>
</html>
