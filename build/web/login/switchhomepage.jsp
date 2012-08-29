<%--
    Document   : switchhomepage
    Created on : 2009-7-23, 15:22:41
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
        User user=(User)session.getAttribute("user");
        %>
          欢迎光临， <%=user.getAccount()%> <br>
              稍后将会进入个人主页
              <% if(user.getType().equals("englishstudent"))
                    response.sendRedirect("englishstudent/homepage.jsp");
                else if(user.getType().equals("softstudent"))
                    response.sendRedirect("softstudent/homepage.jsp");
                else if(user.getType().equals("teacher1")||user.getType().equals("teacher2"))
                     response.sendRedirect("teacher/homepage.jsp");
                else
                    response.sendRedirect("/index.jsp");
              %>
    </body>
</html>
