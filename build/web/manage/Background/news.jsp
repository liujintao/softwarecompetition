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
	font-size:14px;
}
.STYLE3{
COLOR: #575757;
	font-size:14px;
}
div#footer{
    font-size:12px;
	clear:both;
	position:relative;
	border:#bebebe 1px solid;
}
#footer a
{text-decoration:underline;
color:#0099ff;
}
-->
</style>
</HEAD>
<body>
<div id="wrapper">
<table width="992" border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <TD height="99" width="410px" background="images/topback.jpg"><img src="images/logotitle.jpg" /></TD>
        <TD width="164" background="images/topback.jpg" ></TD>
        <TD width="448"  background="images/topback.jpg"><UL class=nav>
            <LI > <A href="../../index.jsp" target="_parent">首页</A> </LI>
            <LI><A href="../../intro/introFrame.html" target="_parent">简介</A> </LI>
            <LI class="navCurrent"><A href="../../infor/notice.jsp" target="_parent">信息</A> </LI>
            <LI><A href="../../service/cooperate.html" target="_parent">服务</A> </LI>
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
    <area shape="rect" coords="61,2,150,38" href="../../infor/production.html" target="_parent"/>
    <area shape="rect" coords="150,3,244,41" href="../../infor/college.html" target="_parent"/>
    <area shape="rect" coords="243,3,333,39" href="../../infor/matchInfor.html" target="_parent"/>
    <area shape="rect" coords="333,2,422,38" href="../../infor/eagle.jsp" target="_parent" />
    <area shape="rect" coords="2,5,60,37" href="../../infor/notice.jsp" target="_parent"/>
    <area shape="rect" coords="421,1,573,37" href="../../infor/soft.jsp" target="_parent" />
  </map>
 <div id="main-infor">

      <TABLE border=0 cellPadding=3 width="100%">
        <TBODY>
        <TR >
					<%int id =(null==request.getParameter("id")?1:(Integer.parseInt(request.getParameter("id"))));
					DispNews dispnews = new DispNews();
					dispnews.setID(id);
					News news = dispnews.idToNews();
					NewsControl newscontrol= new NewsControl();
					newscontrol.setID(id);
					newscontrol.addhits();%>
          <TD>

          <P ><SPAN class=textnews_tit><%=news.getTopic()%> </SPAN>
        <p> <SPAN
            class=STYLE3>　　<%=news.getBody()%> </SPAN></P>


          </TD>
		    </TR>


		  </TBODY>
	    </TABLE>

  </div>
  <div id="footer">
  <table width="992" height="59" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center" style="font-size:12px">Copyright 2008-2009 济南计算机学会.All Rights Reserved<br />
        烟台大学DreamForce小组维护<a href="/web/manage/admin.jsp" target="_parent">管理</a><br />
        联系电话：(0)15553421470 (0)15854558167 <br />
        大赛邮箱：qldxs@163.com </td>
    </tr>
  </table>
  </div>
  </div>
</BODY>
</HTML>
