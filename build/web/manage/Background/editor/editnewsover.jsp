﻿<%@ page contentType="text/html;charset=utf-8" %>
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
<%try{
	String subject = request.getParameter("subject");
	String content = request.getParameter("Content");
	int id = Integer.parseInt(request.getParameter("id"));
	String classn = request.getParameter("classn");
	NewsControl newscontrol= new NewsControl();
	newscontrol.setTopic(subject);
	newscontrol.setBody(CodeFilter.toHtml(content));
	//newscontrol.setAdddate(GetDate.getStringDate());
	//newscontrol.setAdduser(master);
	newscontrol.setClassn(classn);
	newscontrol.setID(id);
	newscontrol.modifynews();
	//????????????????+1
	//MasterControl mastercontrol = new MasterControl();
	//mastercontrol.setUserName(master);
	//mastercontrol.addnewsnum();%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
    <meta HTTP-EQUIV=REFRESH CONTENT='4; URL=../news_1.jsp?id=<%=id%>'>
<TITLE></TITLE>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<LINK 
rel=stylesheet type=text/css href="../styles.css">
</HEAD>
<BODY style="background-color:#FFFFFF">
<div id="wrapper">
  
  <DIV class="content">
    <DIV class=mcont>
      <DIV class="main-cont">
        <DIV class=cont-info>
          <H1><img src="../images/ico_right.gif"/>新闻编辑成功</H1>
          <DIV class=cont-info-det>本页面将在<b><span  style="color:#FF0000"id=yu>3</span><a href=javascript:countDown></a></b>秒后自动返回您所编辑的新闻页面，您可以选择以下操作：</DIV>
          <DIV class=cont-info-rember>
            <DIV class=hd><STRONG style="font-size:14px;"></STRONG></DIV>
            <DIV class=finish-area>
              <TABLE border=0 cellSpacing=0 cellPadding=0>
                <TBODY>
                  <TR>
                    <TH><a href="../../../infor/notice.jsp" target="_parent">返回公告页&gt;&gt;</a></TH>
                    
                  </TR>
                  <TR>
                    <TH><a href="../../../service/job.jsp"  target="_parent">返回就业信息页&gt;&gt;</a></TH>
                    
                  </TR>
                  <TR>
                    <TH><a href="../../../infor/eagle.jsp"  target="_parent">返回雏鹰展翅页&gt;&gt;</a></TH>
                    
                  </TR>
                  <TR>
                    <TH><a href="../../../infor/soft.jsp"  target="_parent">返回软件设计与实现页&gt;&gt;</a></TH>
                    
                  </TR>
                  <TR>
                    <TH><a href='editnews.jsp?id=<%=id%>'>继续编辑文章&gt;&gt;</a></TH>
                    
                  </TR>
                  <TR>
                    <TH><a href="../news_1.jsp?id=<%=id%>">编辑后的文章&gt;&gt;</a></TH>
                   
                  </TR>
                  <TR>
                    <TH><a href="main.jsp">返回管理页面&gt;&gt;</a></TH>
                                      </TR>
                </TBODY>
              </TABLE>
            </DIV>
          </DIV>
        </DIV>
        
      </DIV>
    </DIV>
  </DIV>
  </div>
</BODY>
</HTML>
<script>
	function 
	countDown(secs){yu.innerText=secs;if(--secs>0)setTimeout("countDown("+secs+")",1000);}countDown(3);
	</script>
	<%
	}
	catch(Exception e){
	out.println("???????:"+e.getMessage());
	}%>