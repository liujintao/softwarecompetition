<%--
    Document   : delete
    Created on : 2009-8-16, 9:03:13
    Author     : wei
--%>

<%@ page contentType="text/html;charset=gb2312"
import="com.jspsmart.upload.*,java.sql.*,java.io.*"%>
<%
request.setCharacterEncoding("gb2312");
String idd=request.getParameter("titleid").trim();
int titleid=Integer.parseInt(idd);
Class.forName("org.gjt.mm.mysql.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");
Statement stmt=conn.createStatement();
stmt.executeUpdate("delete from title where titleid="+titleid+";");
out.println("<center><font size=2 color=blue>正在处理信息，请稍后........</font><center><meta http-equiv='refresh' content='2;url=indexdown.jsp '>");
%>
