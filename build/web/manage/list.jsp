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
<HTML><HEAD><TITLE>w</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</HEAD>
<BODY bgColor=#ffffff leftMargin=0 text=#000000 topMargin=0>
<CENTER>
<TABLE border=0 cellPadding=3 cellSpacing=0 width=776>
  <TBODY>
  
  <TR>

    <TD align=middle rowSpan=2 vAlign=top>
      <TABLE border=0 cellPadding=3 width="100%">
        <TBODY>
					<%String classn =request.getParameter("classn");

					Vector classnews = new Vector();
					DispNews dispnews = new DispNews();
					dispnews.setClassn(classn);
					classnews = dispnews.classnToNews();
					if(classnews.size()==0){%>
						<TR><TD width='50%'>暂时还没有新闻</TD></TR>
						<%}//结束if;
					for(int j=0;j<classnews.size();j++) {
					News clanews = (News)classnews.elementAt(j);
					if(j>19){continue;}	%>
        <TR>
          <TD width="50%">
					<A href="Background/news.jsp?id=<%=clanews.getID()%>" target=_blank
							title=<%=clanews.getTopic()%>><%=clanews.getTopic()%></A>
          </TD></TR><%}%></TBODY></TABLE>
		</TD>
   </TR></TBODY></TABLE>
</CENTER></BODY></HTML>
