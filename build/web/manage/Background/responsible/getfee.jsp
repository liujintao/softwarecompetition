<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.ytu.xiao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<jsp:useBean id="getfee" scope="page" class="com.ytu.xiao.DatabaseConnection"/>
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
      <H1>您查看的信息：</H1>
      <DIV class=cont-info-rember>
        <DIV class=finish-area>
            <%
            String type=request.getParameter("type");

            if(type!=null){
            session.setAttribute("feetype", type);

            }
            else{
                type=(String)(session.getAttribute("feetype"));
                }
             String   feetype=(type.equals("teaminfo"))?"论文提交":"联系电话";
            %>

          <TABLE border=0 cellSpacing=0 cellPadding=0>
              <tr>
                <td>序号</td>
                <td>名称</td>
                <td><%=feetype   %></td>
                <td>缴费情况</td>
                <td>操作</td>
              </tr>
                  <%
                  ContactBean contact=new ContactBean(type);
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
                <td><%=(String) obj[1]%></td>
                <td><%=(String) obj[2]%> </td>
                <td><%  jumpPage=pageCtl.curPage+"";
                        out.println("<a href=setfee.jsp?id="+(Integer)obj[3]+"&fee="+(String)obj[2]+"&jumpPage="+jumpPage+"&type="+type+">修改</a >");
                        %>
                </td>
              </tr>
              <%} %>
          </TABLE>
          <form name="PageForm"  action="getfee.jsp" method="post">
              每页<%=pageCtl.rowsPerPage%>行
              共<%=pageCtl.maxRowCount%>  行
              第<%=pageCtl.curPage%>   页
              共<%=pageCtl.maxPage%>  页
              <br>
              <%if (pageCtl.curPage == 1) {
            out.print(" 首页 上一页");
        } else {%>
              <div style="float:right">
                  <A href="getfee.jsp?jumpPage=1">首页</A>
                  <A href="getfee.jsp?jumpPage=<%=pageCtl.curPage - 1%>">上一页</A>
                  <%}%>

                  <%if (pageCtl.curPage >= pageCtl.maxPage) {
            out.print("下一页 尾页");
        } else {%>
                  <A HREF="getfee.jsp?jumpPage=<%=pageCtl.curPage + 1%>">下一页</A>
                  <A HREF="getfee.jsp?jumpPage=<%=pageCtl.maxPage%>">尾页</A>
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
        </DIV>
      </DIV>
    </DIV>
  </DIV>
</DIV>

</body>
</html>
