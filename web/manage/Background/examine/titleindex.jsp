<%--
    Document   : 1index
    Created on : 2009-8-16, 8:40:11
    Author     : wei
--%>
<%@ page language="java" contentType="text/html; charset=gb2312" import="java.sql.*" import="com.wei.app.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#fff;">
<div class="main-cont" style="width:auto; padding-top:100px;">
  <div class="cont-info-rember">
    <div class="hd"><strong   style="font-size:14px; color:#0099ff;">命题审批</strong></div>
  </div>
  <div class="finish-area">
   <table width="100%" border="0" cellspacing="0"  >
      <tr>
        <TD style="font-weight:bold">命题名</TD>
        <td style="font-weight:bold">评分细则</td>
        <td style="font-weight:bold">下载</td>
        <td style="font-weight:bold">审批</td>
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
        <td><%=(String)obj[2]%></td>
        <td><%out.println("<a href=download.jsp?titleid="+(Integer)obj[0]+">下载</a >");%></td>
        <td><%out.println("<a href=shenpi.jsp?titleid="+(Integer)obj[0]+">审批</a >");%></td>
      </tr>
      <% } %>
    </table>

  </div>
  
  <div class="cont-info-rember">
  <div class="hd">
  <form name="PageForm"  action="titleindex.jsp" method="post">  <div style="float:left; width:auto">

    每页<%=pageCtl.rowsPerPage  %>行
    共<%=pageCtl.maxRowCount  %> 行
    第<%=pageCtl.curPage  %> 页
    共<%=pageCtl.maxPage  %> 页 </div>
    <div style="float:right; width:auto">
    <%if (pageCtl.curPage == 1) {
            out.print(" 首页 上一页");
        } else {%>
     <A href="titleindex.jsp?jumpPage=1">首页</A> <A href="titleindex.jsp?jumpPage=<%=pageCtl.curPage - 1%>">上一页</A>
      <%}%>
      <%if (pageCtl.curPage >=pageCtl.maxPage) {
            out.print("下一页 尾页");
        } else {%>
      <A HREF="titleindex.jsp?jumpPage=<%=pageCtl.curPage + 1%>">下一页</A> <A HREF="titleindex.jsp?jumpPage=<%=pageCtl.maxPage%>">尾页</A>
      <%}%>
      转到第
      <SELECT name="jumpPage" style="color:#0099ff">
        <% for (int i = 1; i <= pageCtl.maxPage; i++) {
            if (i == pageCtl.curPage) {
        %>
        <OPTION selected value=<%=i%>><%=i%></OPTION>
        <%} else {%>
        <OPTION value=<%=i%>><%=i%></OPTION>
        <%
        } }%>
      </SELECT>
      页
      <input type="image" src="../images/nextpage.jpg">
      </div>
  </form>
</div>
</div>
</body>
</html>
