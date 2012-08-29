<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#fff;">
<% User softstudentuser=(User)session.getAttribute("user");  %>
<DIV class=main-cont>
  <DIV class=cont-info>
    <H1>欢迎登陆大赛信息系统<%=softstudentuser.getAccount()%>, &nbsp;&nbsp;
      本次登陆的时间为:<%=(new Date()).toString()%></H1>
  </DIV>
  <DIV class=cont-info-rember>
    <%
        UserConnection userCon = new UserConnection();
       SoftStudent user2 = userCon.getSoftStudent(softstudentuser.getId());
             %>
    <DIV class=hd><STRONG  class=Cred style="font-size:14px;">您的个人信息：</STRONG></DIV>
    <DIV class=finish-area>
      <TABLE border=0 cellSpacing=0 cellPadding=0>
        <!--DWLayoutTable-->
        <TBODY>
          <TR>
            <TH width="265">真实姓名：</TH>
            <TD width="405"><%=user2.getName() %></TD>
          </TR>
          <TR>
            <TH>用户名：</TH>
            <TD><%=user2.getAccount() %></TD>
          </TR>
          <TR >
            <TH height="46" valign="top">用户ID :</TH>
            <TD valign="top"><%=softstudentuser.getId()%></TD>
          </TR>
          <TR>
            <TH>个人简介：</TH>
            <TD height="auto"><%=user2.getInfo() %></TD>
          </TR>
          <TR>
            <TH>联系电话：</TH>
            <TD><%=user2.getTel() %></TD>
          </TR>
          <TR>
            <TH height="37">电子邮箱：</TH>
            <TD valign="top"><%=user2.getEmail() %> </TD>
          </TR>
          <TR>
            <TH height="37">参加暑期训练营：</TH>
            <TD valign="top"><%=user2.getTrain() %> </TD>
          </TR>
          <TR>
            <TH height="37">参加巡回报告会：</TH>
            <TD valign="top"><%=user2.getMeeting() %> </TD>
          </TR>
      <% if(userCon.checkaward(softstudentuser)==1){%>
  <TR>
      <% String award=userCon.getTeam(userCon.getTeamId(softstudentuser.getId())).getAward();
      if(award!=null||award!="")
%>
    <TH>打印证书：</TH>
    <TD><a href="../../certificate/createUser.jsp">点击我</a></TD></TR>

<% }%>
        </TBODY>
      </TABLE>
    </DIV>
  </DIV>
  <DIV style="text-align:center;"></DIV>
</DIV>
<DIV class=mft></DIV>
</DIV>
</body>
</html>
