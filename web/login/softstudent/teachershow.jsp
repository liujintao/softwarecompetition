<%--
    Document   : 1index
    Created on : 2009-8-16, 8:40:11
    Author     : wei
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.ytu.xiao.*"%>
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
    <div class="hd"><strong   style="font-size:14px; color:#0099ff;">指导老师信息：</strong></div>
  </div>
  <div class="finish-area">
   <table width="100%" border="0" cellspacing="0"  >
      <tr>
        <TD style="font-weight:bold">指导老师ID</TD>
        <td style="font-weight:bold">用户名</td>
        <td style="font-weight:bold">真实姓名</td>
        <td style="font-weight:bold">选择</td>
      </tr>
       <%
ContactBean contact=new ContactBean("teacher");
String jumpPage=(request.getParameter("jumpPage"));
if(jumpPage==null)
    jumpPage="1";
PageBean pageCtl=contact.listData(jumpPage);
Vector v=pageCtl.getResult();
    int t=(Integer.parseInt(jumpPage)-1)*pageCtl.rowsPerPage;
Enumeration  e=v.elements();
 while(e.hasMoreElements())
{
 Object[] obj=(Object[])e.nextElement();
%>
      <tr height="auto">
        <td><%=(Integer)obj[0]%></td>
        <td><%=(String)obj[1] %></td>
        <td><%=(String)obj[2] %></td>
        <td><%
          int tt=(Integer)obj[0];
          out.print("<a href=changeteacher.jsp?teacherid="+tt+">确认</a>");
          %>   </td>
      </tr>
      <% } %>
    </table>

  </div>
  
  <div class="cont-info-rember">
  <div class="hd">
  <form name="PageForm"  action="teachershow.jsp" method="post"><div style="float:left; width:auto">

    每页<%=pageCtl.rowsPerPage  %>行
    共<%=pageCtl.maxRowCount  %> 行
    第<%=pageCtl.curPage  %> 页
    共<%=pageCtl.maxPage  %> 页 </div>
    <div style="float:right; width:auto">
    <%if (pageCtl.curPage == 1) {
            out.print(" 首页 上一页");
        } else {%>
        <div style="float:right">
    <A href="teachershow.jsp?jumpPage=1">首页</A>
    <A href="teachershow.jsp?jumpPage=<%=pageCtl.curPage - 1%>">上一页</A>
    <%}%>

    <%if (pageCtl.curPage >=pageCtl.maxPage) {
            out.print("下一页 尾页");
        } else {%>
    <A HREF="teachershow.jsp?jumpPage=<%=pageCtl.curPage + 1%>">下一页</A>
    <A HREF="teachershow.jsp?jumpPage=<%=pageCtl.maxPage%>">尾页</A>
    <%}%>
      转到第<SELECT name="jumpPage" style="color:#0099ff">
        <% for (int i = 1; i <= pageCtl.maxPage; i++) {
            if (i == pageCtl.curPage) {
        %>
        <OPTION selected value=<%=i%>><%=i%></OPTION>
        <%} else {%>
        <OPTION value=<%=i%>><%=i%></OPTION>
        <%
        } }%>
    </SELECT>页
      <input type="image" src="../images/nextpage.jpg">
      </div>
  </form>
</div>
</div>
</body>
</html>
