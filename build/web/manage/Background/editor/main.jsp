<%@ page contentType="text/html;charset=utf-8" %>
<%@ page info="database handler"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="news.database.*"%>
<%@ page import="news.news.*"%>
<%@ page import="news.util.*"%>
<%@ page import="news.admin.*"%>
<%String classn =(null==request.getParameter("classn")?"notice":(request.getParameter("classn")));%>
<%int page1 = (null == request.getParameter("page") ? 1 : (Integer.parseInt(request.getParameter("page"))));%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<style type="text/css">
<!--
body {
	background-color:#f6f6f6;
}
textarea {
	PADDING-BOTTOM: 0px;
	LINE-HEIGHT: 160%;
	LIST-STYLE-TYPE: none;
	MARGIN: 0px;
	PADDING-LEFT: 0px;
	PADDING-RIGHT: 0px;
	FONT-FAMILY: verdana, Arial, Helvetica, sans-serif;
	FONT-SIZE: 12px;
	width:800px;
	PADDING-TOP: 0px;
	border:#449bd1 1px solid;
	}
	TABLE {
	border:#449bd1 1px solid;
}
.td1{
border:#449bd1 1px solid;
padding-left:6px;
font-size:14px;
}

-->
</style>
</head>
<body>
<TABLE align=center border=0 cellPadding=6 cellSpacing=1 width=100% ><TBODY><TR></TR>
</TBODY>
</TABLE>
<%
                DispNews dispnews = new DispNews();
        dispnews.setClassn(classn);
        int newscount = dispnews.newsNum();%>
<table align=center border=0 cellpadding=6 cellspacing=1 width=100% >
  <tbody>
    <tr>
      <td colspan=3 class="td1"><a href="addnews.jsp">添加新闻</a> &nbsp;&nbsp;<a href="javascript:this.location.reload()">刷新</a> 
    </tr>
    <tr>
      <td  colspan=2 class="td1"><form name="myform">
        <select name="select" size="1" onChange="location=this.options[this.selectedIndex].value">
          <option value="main.jsp">请选择文章所的板块</option>
          <option value="main.jsp?classn=<%="notice"%>">公告</option>
          <option value="main.jsp?classn=<%="job"%> ">就业信息</option>
          <option value="main.jsp?classn=<%="eagle"%> ">雏鹰展翅</option>
          <option value="main.jsp?classn=<%="soft"%>">软件设计与实现</option>
        </select>
      </form></td>
      <td width="167" align=center class="td1" ><b>共有<font color="red"><%=newscount%></font>篇文章 </b></td>
    </tr>
    <%
        int perPage = 4;
        int intPageCount = 0;

        intPageCount = (newscount + perPage - 1) / perPage;
        if (page1 < 1) {
            page1 = 1;
        }
        if (page1 > intPageCount) {
            page1 = intPageCount;
        }
        int startPage = ((page1 - 1) / 10) * 10 + 1;

        %>
    <%	Vector listnews = new Vector();
        dispnews.setClassn(classn);
        listnews = dispnews.classnToNews();
        for (int j = 0; j < listnews.size(); j++) {
            News newsinfo = (News) listnews.elementAt(j);
            if (j < (page1 - 1) * perPage || j > page1 * perPage - 1) {
                continue;
            }%>
    <tr>
      <td width="17"  ><%=j + 1%></td>
      <td width="517" class="td1"><a href="editnews.jsp?id=<%=newsinfo.getID()%>"><%=newsinfo.getTopic()%></a></td>
      <td align=center class="td1"><a href="editnews.jsp?id=<%=newsinfo.getID()%>">编辑文章</a> &nbsp;<a href="delnews.jsp?id=<%=newsinfo.getID()%>">删除文章</a></td>
    </tr>
    <%}%>
  </tbody>
</table>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%" align=center>
  <TR>
    <TD  align=middle class="td1"><FORM action="main.jsp?page=<%=page1%>&classn=<%=classn%>" method=GET><b>
        <p align='left'>
          <%System.out.println("page1:" + page1);%>
          跳转到第
          <INPUT name=page size=1>
          页
          <INPUT TYPE="submit">
          &nbsp;每页显示<font color=red><%=perPage%></font>篇文章&nbsp;共<font color=red><%=newscount%></font>条新闻&nbsp;第<font color=red><%=startPage%></font>页&nbsp;
          共<font color=red><%=intPageCount%></font>页</p></b>
      </FORM>
    <TD align=right class="td1" ><p align='right'><b>分页：</b> <%=pageShow(startPage, page1, intPageCount, 4)%> </p></TD>
  </TR>
</TABLE>
</body>
</html>
<%!
//快速跳转
    String pageShow(int startPage, int intPage, int intPageCount, int classname1) {
        StringBuffer buf = new StringBuffer();
        if (startPage > 10) {
            buf.append("<a class=list href='main.jsp?page=" + (startPage - 1) + "&classid=" + classname1 + "' title='前十页'><FONT face=webdings>9</FONT></a>&nbsp");
        } else {
            buf.append("<FONT face=webdings color='#ff0000'>9</FONT></a>&nbsp");
        }

        if (intPage > 1) {
            buf.append("<a class=list href='main.jsp?page=" + (intPage - 1) + "&classid=" + classname1 + "' title='上一页'><FONT face=webdings>7</FONT></a>&nbsp;");
        } else {
            buf.append("<FONT face=webdings color='#ff0000'>7</FONT></a>&nbsp;");
        }

        int i = 0;
        buf.append("[&nbsp;");
        for (i = startPage; i <= startPage + 9; i++) {
            if (i == intPage) {
                buf.append("<font color='#ff0000'>" + i + "</font>");
                buf.append("&nbsp;");
            } else {
                buf.append("<a class=list href=main.jsp?page=" + i + "&classid=" + classname1 + " title='第" + i + "页'>" + i + "</a>&nbsp;");
            }
            if (i == intPageCount) {
                i++;
                break;
            }
        }
        buf.append("]&nbsp;");
        if (intPage != intPageCount) {
            buf.append("<a class=list href='main.jsp?page=" + (intPage + 1) + "&classid=" + classname1 + "' title='下一页'><FONT face=webdings>8</FONT></a>&nbsp;");
        } else {
            buf.append("<FONT face=webdings color='#ff0000'>8</FONT></a>&nbsp;");
        }
        if (i <= intPageCount) {
            buf.append("<a class=list href='main.jsp?page=" + i + "&classid=" + classname1 + "' title='后十页'><FONT face=webdings >:</FONT></a>");
        } else {
            buf.append("<FONT face=webdings color='#ff0000'>:</FONT></a>");
        }
        return buf.toString();
    }
%>
