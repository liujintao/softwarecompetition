﻿<%--
    Document   : 1index
    Created on : 2009-8-16, 8:40:11
    Author     : wei
--%>
<%@ page language="java" contentType="text/html; charset=gb2312" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<%! String url,sql; %>
<%! Connection con; %>
<%! Statement stmt; %>
<%! ResultSet rst; %>
<%! int i; %>
<body style="background-color:#fff;">
<div class="main-cont" style="width:auto; padding-top:100px;">
  <div class="cont-info-rember">
    <div class="hd"><strong style="font-size:14px; color:#0099ff;">您所提交的命题</strong></div>
  </div>
  <div class="finish-area">
    <table width="100%" border="0" cellspacing="0" >
      <tr>
        <td width=7%  align="center">命题名</td>
        <td width=10% align="center">评分细则</td>
        <td width=7%  align="center">下载</td>
        <td width=7%  align="center">删除</td>
      </tr>
      <%
Class.forName("org.gjt.mm.mysql.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");
Statement stmt=conn.createStatement();
String teacherid=(String)session.getAttribute("teacherid");
rst=stmt.executeQuery(" select * from title where teacherid="+teacherid+";");
while(rst.next()){
%>
      <tr>
        <td width=7% align="center"><%=rst.getObject(2)%></td>
        <td width=10% align="center"><%=rst.getObject(6)%></td>
        <td width=7% align="center"><a href="download.jsp?titleid=<%=rst.getObject(1)%>">下载</a></td>
        <td width=7% align="center"><a href="delete.jsp?titleid=<%=rst.getObject(1)%>">删除</a></td>
      </tr>
      <%}
stmt.close();
conn.close();%>
    </table>
  </div>
  </div>
</body>
</html>
