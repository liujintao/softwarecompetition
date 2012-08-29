
<%@ page contentType="text/html;charset=gb2312"
import="com.jspsmart.upload.*,java.sql.*,java.io.*"%>
<%
request.setCharacterEncoding("gb2312");
String atitleid=(String)request.getParameter("teamid").trim();
int teamid=Integer.parseInt(atitleid);
Class.forName("org.gjt.mm.mysql.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");
Statement stmt=conn.createStatement();
ResultSet rst=stmt.executeQuery(" select * from team where teamid="+teamid+";");
rst.next();
String filename=rst.getString(8).trim();
//int teamid=rst.getInt(1);
String str = (String)request.getRealPath("/")+"teamupload/"+teamid+"/"+filename;
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