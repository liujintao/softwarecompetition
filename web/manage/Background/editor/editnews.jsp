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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎光临</title>
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
.cred {
	color:#c00;
}
#apDiv1 {
	position:absolute;
	left:30px;
	top:507px;
	width:264px;
	height:73px;
	z-index:1;
}
 .input-tit{
width:500px;
height:30px;
}
-->
</style>
</head>
<body>
<script Language="JavaScript">
<!--
function check_input(theForm)
{

   if (theForm.subject.value == "")
  {
    alert("请输入文章标题.");
    theForm.subject.focus();
    return (false);
  }

   if (theForm.Content.value == "")
  {
    alert("请输入贴子的内容.");
    theForm.Content.focus();
    return (false);
  }
 
   if (theForm.classid.value == "")
  {
    alert("请选择栏目.");
    theForm.classid.focus();
    return (false);
  }
	
  if (theForm.subject.value.length > 100)
    {
    alert("文章标题长度应小于50个字符或数字.");
    theForm.subject.focus();
    return (false);
  }
}
//-->
</script>
<%int id =(null==request.getParameter("id")?1:(Integer.parseInt(request.getParameter("id"))));
	DispNews dispnews = new DispNews();
	dispnews.setID(id);
	News news = dispnews.idToNews();	%>
<TABLE border="0"  align=center cellpadding=0 cellspacing=1  >
  <!--DWLayoutTable-->
  <form method="POST" action="editnewsover.jsp?id=<%=id%>" onSubmit="return check_input(this)">
    <TR  height=25>
      <TD width="955" height="26" align="center"><FONT ><FONT SIZE="5" COLOR="#449bd1"><b>编辑文章</b></FONT><B><span class="cred">**</span>为必填项目</B></FONT></TD>
    </TR>
    <TR>
      <TD height="558" valign="top"  >&nbsp;<B>文章标题:
        <input class="input-tit" type="text" name=subject size=70 maxlength=255 value=<%=news.getTopic()%>>
        <textarea  name="Content" rows="30" value="请在此填写文章的内容" onClick="if (value =='请在此填写文章的内容'){value =''}" onBlur="if (value ==''){value='请在此填写文章的内容'}"><%=news.getBody()%></textarea>
        </B>
        <div id="apDiv1"> <B>所在版块  ：
          <SELECT style="border:#449bd1 1px solid" NAME="classn">
            <option value="">请选择新闻所在的板块</option>
            <option value="<%="notice"%>">公告</option>
            <option value="<%="job"%>">就业信息</option>
            <option value="<%="eagle"%>">雏鹰展翅</option>
            <option value="<%="soft"%>">软件设计与实现</option>
          </SELECT>
          </B></div></TD>
    </TR>
    <TR>
      <TD height="49" align=center valign="top"  ><INPUT name=Submit type="image" src="../images/publish.jpg">
        </TD>
    </TR>
  </form>
</TABLE>
</body>
</html>
