<%--
    Document   : delete
    Created on : 2009-8-1, 15:47:26
    Author     : wei
--%>

<%@ page contentType="text/html;charset=gb2312"
import="com.jspsmart.upload.*,java.sql.*,java.io.*"%>
<%
request.setCharacterEncoding("gb2312");
String idd=request.getParameter("teamid").trim();
int teamid=Integer.parseInt(idd);
Class.forName("org.gjt.mm.mysql.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");
Statement stmt=conn.createStatement();
stmt.executeUpdate("update team set projectname=null where teamid="+teamid+";");
out.println("<center><font size=2 color=blue>正在处理信息，请稍后........</font></center><meta http-equiv='refresh' content='2;url=2index.jsp '>");
%>