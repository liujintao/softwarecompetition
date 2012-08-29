<%-- 
    Document   : chatterdownload
    Created on : 2009-9-16, 11:11:44
    Author     : wei
--%>
<%@ page contentType="text/html;charset=gb2312"
import="com.jspsmart.upload.*,java.sql.*,java.io.*"%>
<%
String str=request.getRealPath("/")+"chattersoftware/"+"ChatIM.zip";
SmartUpload su = new SmartUpload();
su.initialize(pageContext);
su.setContentDisposition(null);
su.downloadFile(str);
out.clear();
out = pageContext.pushBody();
%>