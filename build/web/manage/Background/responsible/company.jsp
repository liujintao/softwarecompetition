<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*,java.util.*"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>

<body style="background-color:#FFFFFF">
<DIV class=mcont>
<DIV class=main-cont>
<DIV class=cont-info>
<H1>赞助单位的信息：</H1>
<DIV class=cont-info-rember>
<DIV class=finish-area>
<TABLE border=0 cellSpacing=0 cellPadding=0>
  <TBODY>
  <TR>
                    <td >序号</td>
                    <td >赞助单位名称</td>
                    <td width="auto" >删除</td>
                    <td >修改</td>
                
              </TR>
        <%
ContactBean contact=new ContactBean("company");
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
             <TR height="auto">
                    <TD>
                        <%=t  %> 
                    </TD>
                    <TD>
                        <%=(String) obj[1]%>

                    </TD>
                    <TD  class="tdt" style="padding-top:0px; padding-left:0px;">
                        <%
                        out.println("<a href=deleteCompany.jsp?comid="+(Integer)obj[0]+">删除</a >");
                        %>
                    </TD>
                    <TD>
                             <%
                        out.println("<a href=modifyCompany.jsp?comid="+(Integer)obj[0]+">修改</a >");
                        %>
                    </TD>

                    
                     
                    </TR>
                    <% } %>
            </TBODY></TABLE>
             <div class="cont-info-rember">
  <div class="hd">
            <form name="PageForm"  action="company.jsp" method="post"><div style="float:left; width:auto">
            每页<%=pageCtl.rowsPerPage  %>行
    共<%=pageCtl.maxRowCount  %>  行
    第<%=pageCtl.curPage  %>   页
    共<%=pageCtl.maxPage  %>  页
     </div>
    <div style="float:right; width:auto">
    <%if (pageCtl.curPage == 1) {
            out.print(" 首页 上一页");
        } else {%>
    <A href="company.jsp?jumpPage=1">首页</A>
    <A href="company.jsp?jumpPage=<%=pageCtl.curPage - 1%>">上一页</A>
    <%}%>
    
    <%if (pageCtl.curPage >=pageCtl.maxPage) {
            out.print("下一页 尾页");
        } else {%>
    <A HREF="company.jsp?jumpPage=<%=pageCtl.curPage + 1%>">下一页</A>
    <A HREF="company.jsp?jumpPage=<%=pageCtl.maxPage%>">尾页</A>
    <%}%>
    转到第<SELECT name="jumpPage">
        <% for (int i = 1; i <= pageCtl.maxPage; i++) {
            if (i == pageCtl.curPage) {
        %>
        <OPTION selected value=<%=i%>><%=i%></OPTION>
        <%} else {%>
        <OPTION value=<%=i%>><%=i%></OPTION>
        <%
        } }%>
    </SELECT>页
    <input type="image" src="../images/nextpage.jpg"></div>
</form>
</div>
</div>
       <div style="text-align:center"><img src="../images/Addcompany.jpg" border="0" usemap="#Map" />
<map name="Map" id="Map">
  <area shape="rect" coords="3,2,116,47" href="addCompany.jsp"/>
</map></div>
</DIV></DIV>

</DIV>
<DIV class=mft></DIV>
</DIV>
</DIV>
</body>
</html>
