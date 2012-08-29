<%--
    Document   : download
    Created on : 2009-8-16, 9:02:27
    Author     : wei
--%>

<%@ page contentType="text/html;charset=gb2312"
import="com.jspsmart.upload.*,java.sql.*,java.io.*"%>
<%
request.setCharacterEncoding("gb2312");
String atitleid=(String)request.getParameter("titleid").trim();
int titleid=Integer.parseInt(atitleid);
Class.forName("org.gjt.mm.mysql.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");
Statement stmt=conn.createStatement();
ResultSet rst=stmt.executeQuery(" select * from title where titleid="+titleid+";");
rst.next();
String name=rst.getString(2).trim();
String filename=rst.getString(6).trim();
String size=rst.getString(3).trim();
int teacherid=rst.getInt(5);
String str = (String)request.getRealPath("/")+"upload/"+teacherid+"/"+filename;
//stmt.close();
//con.close();
//str = new String(str.getBytes("gb2312"),"ISO8859-1");
SmartUpload su = new SmartUpload();
su.initialize(pageContext);
su.setContentDisposition(null);
su.downloadFile(str);
out.clear();
out = pageContext.pushBody();
%>