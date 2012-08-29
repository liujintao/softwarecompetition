<%--
    Document   : shenpi
    Created on : 2009-8-16, 10:14:01
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
stmt.executeUpdate("update title set tested='Y' where titleid="+titleid+";");
out.println("<center><font size=2 color=blue>命题正在审批，请稍后........</font></center><meta http-equiv='refresh' content='2;url=titleindex.jsp '>");
%>