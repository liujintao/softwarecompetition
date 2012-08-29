<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*,java.util.*"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>

<body style="background-color:#fff;">
<% User teacheruser=(User)session.getAttribute("user");
             UserConnection userCon=new  UserConnection();
               %>

<DIV class=main-cont>
<DIV class=cont-info>
<H1>欢迎登陆大赛信息系统<%=teacheruser.getAccount()%>,
            &nbsp;&nbsp;
           本次登陆的时间为:<%=(new Date()).toString()%></H1>
<DIV class=cont-info-det>
<%
                  Teacher user3=userCon.getTeacher(teacheruser.getId());
                           %>
</DIV>

<DIV class=cont-info-rember>
<DIV class=hd><STRONG  class=Cred style="font-size:14px; color:#0099ff">您的个人信息：</STRONG></DIV>
<DIV class=finish-area>
<TABLE border=0 cellSpacing=0 cellPadding=0>
  <TBODY>
  <TR>
    <TH>真实姓名：</TH>
    <TD><%=user3.getName() %></TD>
  </TR>
  <TR>
    <TH>用户名：</TH>
    <TD><%=user3.getAccount() %></TD>
  </TR>
    <TR>
    <TH>个人简介：</TH>
    <TD><%=user3.getInfo() %></TD>
    </TR>
    <TR>
    <TH>联系电话：</TH>
    <TD><%=user3.getTel() %></TD>
    </TR>
    <TR>
    <TH>电子邮箱：</TH>
    <TD><%=user3.getEmail() %></TD></TR>
    </TBODY></TABLE>
</DIV></DIV>
</DIV>
<DIV class=mft></DIV></DIV>
</body>
</html>
