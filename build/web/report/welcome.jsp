<%@page  contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" import="com.anxin.trainer,java.io.*,java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>注册新用户</TITLE>
<META content="text/html; charset=GBK" http-equiv=Content-Type>
<link href="styles.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>

<div id="wrapper">
  <table width="995" border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <td height="99" width="410"><img src="images/logotitle.jpg"/></td>
        <TD width="150px" background="images/topback.jpg" >&nbsp;</td>
        <TD background="images/topback.jpg"><UL class=nav>
            <LI ><A href="../index.jsp" target="_parent">首页</A> </LI>
            <LI><A href="../intro/introFrame.html" target="_parent">简介</A> </LI>
            <LI><A href="../infor/notice.jsp" "target="_parent">信息</A> </LI>
            <LI><A href="../service/cooperate.html" target="_parent">服务</A> </LI>
            <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A></LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
  <DIV class="content">
    <DIV class=mhd>
      <DIV class=tit><STRONG>申请成功!</STRONG></DIV>
    </DIV>
    <DIV class=mcont>
      <!-- 分拆补充资料部分 Start -->
      <DIV class="main-cont">
        <DIV class=cont-info>
          <H1><img src="images/ico_right.gif"/>恭喜您申请成功！</H1>
          <DIV class=cont-info-det><% trainer user=(trainer)request.getAttribute("user");  %></strong></DIV>
          <DIV class=cont-info-rember>
            <DIV class=hd><STRONG style="font-size:14px;"><%=user.getAttachname()%></STRONG></DIV>
          </DIV>
          <DIV style="text-align:center;"></DIV>
        </DIV>
      </DIV>
    </DIV>
  </DIV>
  <DIV class="footer"><A href="" 
target="_blank">关于我们</A>&nbsp;<A href="" 
target="_blank"> 官方博客</A>&nbsp;&nbsp;&nbsp;&nbsp;<A 
href="http://net.china.com.cn/index.htm"
target=_blank>举报违法信息</A>&nbsp;&nbsp;<A href="/" 
target=_blank>客户服务</A><BR>
  <A href="" target=_blank>相关法律</A>&nbsp;&nbsp;|&nbsp;&nbsp;版权所有&nbsp;&copy;&nbsp;1997-2009 </DIV>
</div>
</BODY>
</HTML>
