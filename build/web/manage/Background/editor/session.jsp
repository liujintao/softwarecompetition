<%
String userName = (String) session.getAttribute("userName_s");
if (userName==null){ 
response.sendRedirect("error.jsp");
}
%>