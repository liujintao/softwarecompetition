<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.ytu.xiao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#ffffff;">
<DIV class=mcont>
  <DIV class=main-cont>
    <DIV class=cont-info>
      <H1>已经创建的用户信息：</H1>
      <DIV class=cont-info-rember>
        <DIV class=finish-area>
          <TABLE border=0 cellSpacing=0 cellPadding=0>
            <TBODY>
              <tr>
                <td>序号</td>
                <td>用户名</td>
                <td>姓名</td>
                <td>电子邮箱</td>
                <td>用户ID</td>
                <td>删除</td>
              </tr>
                  <%
ContactBean contact=new ContactBean("adminator");
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
              <tr>
                <td><%=t  %> </td>
                <td><%=(String) obj[0]%></td>
                <td><%=(String) obj[1]%> </td>
                <td><%=(String) obj[2]%> </td>
                <td><%=(Integer) obj[3]%> </td>
                <td><%  jumpPage=pageCtl.curPage+"";
                        out.println("<a href=Deletesucceed.jsp?account="+(String)obj[0]+"&jumpPage="+jumpPage+">修改</a >");
                        %>
                </td>
              </tr>
              <%} %>
            </TBODY>
          </TABLE>
           <div class="cont-info-rember">
  <div class="hd">
          <form name="PageForm"  action="showuser.jsp" method="post">
           <div style="float:left; width:auto">
              每页<%=pageCtl.rowsPerPage%>行
              共<%=pageCtl.maxRowCount%>  行
              第<%=pageCtl.curPage%>   页
              共<%=pageCtl.maxPage%>  页
            </div>
            <div style="float:right; width:auto">
              <%if (pageCtl.curPage == 1) {
            out.print(" 首页 上一页");
        } else {%>
                  <A href="showuser.jsp?jumpPage=1">首页</A>
                  <A href="showuser.jsp?jumpPage=<%=pageCtl.curPage - 1%>">上一页</A>
                  <%}%>

                  <%if (pageCtl.curPage >= pageCtl.maxPage) {
            out.print("下一页 尾页");
        } else {%>
                  <A HREF="showuser.jsp?jumpPage=<%=pageCtl.curPage + 1%>">下一页</A>
                  <A HREF="showuser.jsp?jumpPage=<%=pageCtl.maxPage%>">尾页</A>
                  <%}%>
                  转到第<SELECT name="jumpPage">
                      <% for (int i = 1; i <= pageCtl.maxPage; i++) {
            if (i == pageCtl.curPage) {
                      %>
                      <OPTION selected value=<%=i%>><%=i%></OPTION>
                      <%} else {%>
                      <OPTION value=<%=i%>><%=i%></OPTION>
                      <%
            }
        }%>
                  </SELECT>页
              <input type="image" src="../images/nextpage.jpg"></div>
          </form>
          </div>
          </div>
        </DIV>
      </DIV>
    </DIV>
  </DIV>
</DIV>

</body>
</html>
