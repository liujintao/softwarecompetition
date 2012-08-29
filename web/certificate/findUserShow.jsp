
<%@page contentType="text/html;charset=UTF-8"import="com.User"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>


<div id="wrapper">

<table width="995" border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <td height="99" width="410"><img src="logotitle.jpg"/></td>
        <TD width="150px" background="topback.jpg" >&nbsp;</td>
        <TD background="chinabank/images/topback.jpg"><UL class=nav>
            <LI ><A href="../index.jsp" target="_parent">首页</A> </LI>
            <LI><A href="../intro/introFrame.html" target="_parent">简介</A> </LI>
            <LI><A href="../infor/notice.jsp" target="_parent">信息</A> </LI>
            <LI><A href="../service/cooperate.html" target="_parent">服务</A> </LI>
            <LI><A href="#" target="_parent">论坛</A> </LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
 <%
  User user=(User)request.getAttribute("User2");
   if(user.getName()==null || user.getAward()==null || user.getJob()==null || user.getCid()==null)

  {%> <h1 style="display:block; font-size:28px; padding-top:20px; text-align:center; color:#575757"> 错误，请检查后重新输入!</h1>
  <%}else{%>
  <DIV class="content">
    <DIV class=mcont>
      <!-- 分拆补充资料部分 Start -->
      <DIV class="main-cont">
        <DIV class=cont-info>
          <H1><img src="images/ico_right.gif"/>恭喜，您的获奖信息如下：</H1>
          <DIV class=cont-info-det></DIV>
          <DIV class=cont-info-rember>
            <DIV class=finish-area>
              <TABLE border=0 cellSpacing=0 cellPadding=0>
                <TBODY>
                  <TR>
                    <TH>姓名：</TH>
                    <TD><%=user.getName()%></TD>
                  </TR>
                  <TR>
                    <TH>担任工作：</TH>
                    <TD><%=user.getJob()%></TD>
                  </TR>
                  <TR>
                    <TH>几等奖：</TH>
                    <TD><%=user.getAward()%></TD>
                  </TR>
                </TBODY>
              </TABLE>
            </DIV>
          </DIV>
         
        </DIV>
        <DIV class=mft></DIV>
      </DIV>
    </DIV>
</DIV>
</div>
</body>
</html><%
  }%>
