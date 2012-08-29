<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*,java.util.*"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>

<body style="width:auto; background:transparent;">
 <% User englishuser=(User)session.getAttribute("user"); %>
<DIV class=main-cont>
<DIV class=cont-info>
<H1>欢迎登陆大赛信息系统<%=englishuser.getAccount()%>,
本次登陆的时间为:<%=(new Date()).toString()%>;</H1>
<%
       UserConnection userCon=new  UserConnection();
               if(userCon.Checkfee(englishuser)==0){
               %>
<DIV class=cont-info-det>

                   对不起，你还没有缴费，请缴费后再继续使用该系统！
              <% }else {
                  EnglishStudent user1=userCon.getEnglishStudent(englishuser.getId());
               %>
</DIV>

<DIV class=cont-info-rember>
<DIV class=hd><STRONG  class=Cred style="font-size:14px;">您的个人信息：</STRONG></DIV>
<DIV class=finish-area>
<TABLE border=0 cellSpacing=0 cellPadding=0>
  <TBODY>
  <TR>
    <TH>真实姓名：</TH>
    <TD><%=user1.getName() %></TD>
  </TR>
  <TR>
    <TH>用户名：</TH>
    <TD><%=user1.getAccount() %></TD>
  </TR>
    <TR>
    <TH>个人简介：</TH>
    <TD><%=user1.getInfo() %></TD>
    </TR>
    <TR>
    <TH>联系电话：</TH>
    <TD><%=user1.getTel() %></TD>
    </TR>
    <TR>
    <TH>电子邮箱：</TH>
    <TD><%=user1.getEmail() %></TD></TR>
    <TR>
    <TH>参加暑期训练营：</TH>
    <TD><%=user1.getTrain() %></TD></TR>
    <TR>
    <TH>初赛情况：</TH>
    <TD><%=user1.getFirst() %></TD></TR>
    <TR>
    <TH>初赛缴费：</TH>
    <TD><%=user1.getFirstf() %></TD></TR>
    <TR>
    <TH>复赛情况：</TH>
    <TD><%=user1.getAfinal() %></TD></TR>
    <TR>
    <TH>复赛缴费：</TH>
    <TD><%=user1.getAfinalf() %></TD></TR>
               <% if(userCon.checkaward(englishuser)==1){%>
  <TR>
      <% if(user1.getAward()!=null||user1.getAward()!="") { %>
    <TH>打印证书：</TH>
    <%   }  %>
    <TD><a href="../../certificate/createUser.jsp">点击我</a></TD></TR>
<% }%>
    </TBODY></TABLE>
</DIV></DIV>
 <% } %>
</DIV>
</DIV>
</body>
</html>
