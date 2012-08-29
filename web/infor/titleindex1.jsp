<%--
    Document   : titleindex11
    Created on : 2009-8-16, 10:10:02
    Author     : wei
--%>

<%@ page language="java" contentType="text/html; charset=gb2312" import="java.sql.*" import="com.wei.app2.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>优秀作品</title>
<link href="Styles.css" rel="stylesheet" type="text/css" />

</head>
<body style="background-color:#FFFFFF">
<div id="wrapper" style="text-align:center">
<table width="992" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <TD height="99" width="410px" background="/web/infor/images/topback.jpg"><img src="images/logotitle.jpg" /></TD>
      <TD width="164" background="images/topback.jpg" ></TD>
      <TD width="448"  background="images/topback.jpg"><UL class=nav>
          <LI > <A href="../index.jsp" target="_parent">首页</A> </LI>
          <LI><A href="../intro/introFrame.html" target="_parent">简介</A> </LI>
          <LI class="navCurrent"><A href="notice.jsp" target="_parent">信息</A> </LI>
          <LI><A href="../service/cooperate.html" target="_parent">服务</A> </LI>
          <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A> </LI>
        </UL></TD>
    </tr>
  </tbody>
</table>
<table width="995" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="575" height="39" valign="top"><img src="images/nav_left.jpg" width="575" height="39" border="0" usemap="#Map" /></td>
    <td width="420" valign="top"><img src="images/nav_right.jpg" width="420" height="39" /></td>
  </tr>
</table>
<map name="Map" id="Map">
  <area shape="rect" coords="61,2,150,38" href="production.html" target="_parent"/>
  <area shape="rect" coords="149,0,243,38" href="college.html" target="_parent"/>
  <area shape="rect" coords="243,3,333,39" href="matchInfor.html" target="_parent"/>
  <area shape="rect" coords="333,2,422,38" href="eagle.jsp" target="_parent" />
  <area shape="rect" coords="2,4,60,36" href="notice.jsp" target="_parent"/>
<area shape="rect" coords="421,1,573,37" href="soft.jsp" target="_parent" />
</map>
<div class="main-cont" style="width:auto; padding-top:10px;">
<div class="cont-info-rember">
    <div class="hd"><strong  style="font-size:14px; color:#0099ff;">优秀作品下载</strong></div>
  </div>
<div class="finish-area">
<table width="100%"  border="0" cellspacing="0">
<tr>
        <TD style="font-weight:bold">文档</TD>
        <td style="font-weight:bold">下载</td>
      </tr>
<%
ContactBean contact=new ContactBean();
String jumpPage=(String)(request.getParameter("jumpPage"));
if(jumpPage==null)
    jumpPage="1";
PageBean pageCtl=contact.listData(jumpPage);
Vector v=pageCtl.getResult();
    int t=(Integer.parseInt(jumpPage)-1)*pageCtl.rowsPerPage;
Enumeration  e=v.elements();
 while(e.hasMoreElements())
{ t++;
 Object[] obj=(Object[])e.nextElement();
%>
 <tr height="auto">
<td><%=(String)obj[1]%></td>
<td><%out.println("<a href=download1.jsp?teamid="+(Integer)obj[0]+">下载</a >");%></td>
</tr>
<% } %>
</table>
</div>
  <div class="cont-info-rember">
  <div class="hd">
 <form name="PageForm"  action="titleindex1.jsp" method="post"><div style="float:left; width:auto">
            每页<%=pageCtl.rowsPerPage  %>行
            共<%=pageCtl.maxRowCount  %>  行
            第<%=pageCtl.curPage  %>   页
            共<%=pageCtl.maxPage  %>  页
    </div>
    <div style="float:right; width:auto">
        <%if (pageCtl.curPage == 1) {
            out.print(" 首页 上一页");
        } else {%>
        <div style="float:right">
    <A href="titleindex1.jsp?jumpPage=1">首页</A>
    <A href="titleindex1.jsp?jumpPage=<%=pageCtl.curPage - 1%>">上一页</A>
    <%}%>

    <%if (pageCtl.curPage >=pageCtl.maxPage) {
            out.print("下一页 尾页");
        } else {%>
    <A HREF="titleindex1.jsp?jumpPage=<%=pageCtl.curPage + 1%>">下一页</A>
    <A HREF="titleindex1.jsp?jumpPage=<%=pageCtl.maxPage%>">尾页</A>
    <%}%>
    转到第<SELECT name="jumpPage">
        <% for (int i = 1; i <= pageCtl.maxPage; i++) {
            if (i == pageCtl.curPage) {
        %>
        <OPTION value=<%=i%>><%=i%></OPTION>
        <%} else {%>
        <OPTION value=<%=i%>><%=i%></OPTION>
        <%
        } }%>
    </SELECT>页
    <input type="image" src="images/nextpage.jpg">
    </div>
</form>
</div>
</div>
</div>
</div>
</body>
</html>

