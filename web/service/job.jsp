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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>就业信息 - 济南计算机学会 - Powered by SupeSite</title>
<link href="Styles.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.textnews_tit {
	FONT-WEIGHT: bold;
	FONT-SIZE: 14px;
	COLOR: #0099ff;
	LINE-HEIGHT: 15px;
	FONT-FAMILY: Verdana, sans-serif;
}
.STYLE3 {
	COLOR: #575757;
	font-size:14px;
}
-->
</style>
</head>
<body>
<div id="wrapper">
  <table width="992" border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <TD height="99" width="410" background="../infor/index/images/topback.jpg"><img src="images/logotitle.jpg" /></TD>
        <TD width="163" background="images/topback.jpg" ></TD>
        <TD  background="images/topback.jpg"><UL class=nav>
            <LI > <A href="../index.jsp" target="_parent">首页</A> </LI>
            <LI><A href="../intro/introFrame.html" target="_parent">简介</A> </LI>
            <LI ><A href="../infor/notice.jsp" target="_parent">信息</A> </LI>
            <LI class="navCurrent"><A href="../service/cooperate.html" target="_parent">服务</A> </LI>
            <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A> </LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
  <table width="995" border="0" cellpadding="0" cellspacing="0">
    <!--DWLayoutTable-->
    <tr>
      <td width="575" height="39" valign="top"><img src="images/nav_left.jpg" width="575" height="39" border="0" usemap="#Map" />
        <map name="Map" id="Map">
  <area shape="rect" coords="3,2,92,38" href="cooperate.html" target="_parent"/>
  <area shape="rect" coords="92,2,175,37" href="renzheng.html" target="_parent"/>
  <area shape="rect" coords="183,2,261,37" href="texperice.html" target="_parent" />
<area shape="rect" coords="267,3,346,36" href="activser.html" target="_parent"/>
<area shape="rect" coords="359,5,466,37" href="report.html" />
<area shape="rect" coords="472,3,564,37" href="job.jsp" />
</map></td>
      <td width="420" valign="top"><img src="images/nav_right.jpg" width="420" height="39" /></td>
    </tr>
  </table>
  <div id="main-infor">
    <table width="992px" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="992px" height="auto" bgColor=#ffffff><p>
          <P class=textnews><SPAN class=textnews_tit><br />
            就业信息
            >></SPAN> <SPAN 
            class=STYLE3> 　　
            <%	Vector listnews = new Vector();
					DispNews dispnews = new DispNews();
					dispnews.setClassn("job");
					listnews = dispnews.classnToNews();

					int newsnum=dispnews.newsNum();
					//System.out.println("newsnum:"+newsnum);%>
            <%  for(int j=0;j<listnews.size();j++) {
                    News newsinfo = (News)listnews.elementAt(j);
							if(j>9){continue;}%>
            &nbsp;&nbsp;&nbsp;<A href="../manage/Background/news.jsp?id=<%=newsinfo.getID()%>" target=_blank
							title=<%=newsinfo.getTopic()%>></A> </p>
          <%  if(newsinfo.getTopic().length()>30)
							out.println(newsinfo.getTopic().substring(0,30)+"...");
							else
							out.println(newsinfo.getTopic());%>
          <FONT
            color=#999999><%=newsinfo.getAdddate()%></FONT><BR>
          <%}%>
          <div style="float:right;" ><A style="color:#0048cc" HREF="../manage/list.jsp?classn=<%="job"%>">＜更多信息＞</A></div>
          </P></td>
      </tr>
    </table>
  </div>
  <div id="footer">
    <table width="992" height="59" cellpadding="0" cellspacing="0" style="background-color:#fff">
      <tr>
        <td align="center">Copyright 2008-2009 济南计算机学会.All Rights Reserved<br />
          烟台大学DreamForce小组维护<a href="../manage/admin.jsp"">管理</a><br />
          联系电话：(0)15553421470 (0)15854558167 <br />
          大赛邮箱：qldxs@163.com </td>
      </tr>
    </table>
  </div>
</div>
</body>
</html>
