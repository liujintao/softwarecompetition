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
<HTML><HEAD><TITLE></TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<LINK href="../styles.css" rel=stylesheet type=text/css>
<style type="text/css">
<!--
.textnews_tit {
	FONT-WEIGHT: bold;
	FONT-SIZE: 14px;
	COLOR: #0099ff;
	LINE-HEIGHT: 15px;
	FONT-FAMILY: Verdana, sans-serif;
}
#main-news table{
border:#0099ff 1px solid;
background-color:#FFFFFF;
}
.STYLE1 {
	COLOR: #575757;
	font-size:13px;
}
.STYLE3{
COLOR: #575757;
	font-size:14px;
}
-->
</style>
</HEAD>
<body>
<div id="wrapper">
 <div id="main-news">
<TABLE border=0 cellPadding=3 width="796px">
        <TBODY>
        <TR >
					<%int id =(null==request.getParameter("id")?1:(Integer.parseInt(request.getParameter("id"))));
					DispNews dispnews = new DispNews();
					dispnews.setID(id);
					News news = dispnews.idToNews();
					NewsControl newscontrol= new NewsControl();
					newscontrol.setID(id);
					newscontrol.addhits();%>
          <TD width="796px">
          
          <P ><SPAN class=textnews_tit><%=news.getTopic()%> </SPAN>
        <p> <SPAN 
            class=STYLE3>　　<%=news.getBody()%> </SPAN></P>
          
          
          </TD>
	      </TR>

        
	  </TBODY>
    </TABLE>
  </div>
  </div>
</BODY>
</HTML>
