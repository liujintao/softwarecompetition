<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.User" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.td1 {
	padding-left:30px;
	height:37px;
	font-size:15px;
	font-family:Verdana, Arial, Helvetica, sans-serif;
}
.left {
	width:198px;
	height:650px;
	background-image:url(images/leftback.jpg);
	background-repeat:repeat-y;
}
.STYLE1 {
	font-size: 16px
}
-->
</style>
</head>
<body style="width:198px;">
<% User user=(User)request.getSession().getAttribute("user");  %>
<div class="left">
  <table width="198"  height="100%" border="0" cellpadding="0" cellspacing="0" background="images/loginback.jpg">
    <!--DWLayoutTable-->
    <tr>
      <td width="198"  height="54" valign="top"><img src="images/top1.jpg" width="198" height="27"/></td>
    </tr>
    <tr>
      <td height="37" valign="top"  class="td1"  style="font-size:18px;" ><img src="images/login.gif" width="17" height="16" /><b> 用户信息:</b></td>
    </tr>
    <tr>
      <td height="37" valign="top" class="td1" ><%
                   if(user.getType().equals("englishstudent")){
                   %>
        <a href="/websystem/login/englishstudent/homepage.jsp" target="mainFrame"  >个人首页&gt;&gt;</a>
        <% } else if(user.getType().equals("softstudent")){ %>
        <a href="/websystem/login/softstudent/homepage.jsp" target="mainFrame">个人首页&gt;&gt;</a>
        <% } else { %>
        <a href="/websystem/login/teacher/homepage.jsp" target="mainFrame">个人首页&gt;&gt;</a>
        <%  } %>
      </td>
    </tr>
    <tr>
      <td height="66"  valign="top" class="td1" ><label>
        <%
                   if(user.getType().equals("englishstudent")){
                   %>
        <a href="/websystem/login/englishstudent/modify.jsp" target="mainFrame">个人信息修改&gt;&gt;</a>
        <% } else if(user.getType().equals("softstudent")){ %>
        <a href="/websystem/login/softstudent/modify.jsp" target="mainFrame">个人信息修改&gt;&gt;</a>
        <% } else { %>
        <a href="/websystem/login/teacher/modify.jsp" target="mainFrame">个人信息修改&gt;&gt;</a>
        <%  } %>
        </label>
      </td>
    </tr>
    <%  if (user.getType().equals("softstudent")) {%>
    <tr>
      <td height="37"  valign="top" class="td1" ><a href="/websystem/login/softstudent/teaminfo.jsp" target="mainFrame">团队信息&gt;&gt;</a> </td>
    </tr>
    <tr>
      <td height="37"  valign="top" class="td1" ><a href="/websystem/login/softstudent/1index.jsp" target="mainFrame">论文提交&gt;&gt;</a> </td>
    </tr>
    <tr>
      <td height="37"  valign="top" class="td1" ><a href="/websystem/login/softstudent/2index.jsp" target="mainFrame">作品提交&gt;&gt;</a> </td>
    </tr>
    <% } else if (user.getType().equals("teacher1")) {%>
    <tr>
      <td height="37"  valign="top" class="td1"><a href="/websystem/login/teacher/1index.jsp" target="mainFrame">提交命题&gt;&gt;</a></td>
    </tr>
    <% } else if (user.getType().equals("teacher2")) {%>
    <tr>
      <td height="37"  valign="top" class="td1"><a href="/websystem/login/teacher/guideteam.jsp" target="mainFrame">指导团队</a>&gt;&gt;</td>
    </tr>
    <% }%>
    <tr>
      <td   valign="top" class="td1" ><a href="javascript:location.replace('/websystem/login/logout.jsp')" target="_parent">注销登录&gt;&gt;</a> </td>
    </tr>
    <tr>
      <td height="34" valign="top" ><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
    <tr>
      <td height="65" valign="top" background="images/leftback.jpg"><img src="images/loginleft.jpg" />&nbsp;</td>
    </tr>
    <tr>
      <td height="100%" valign="top" background="images/leftback.jpg"><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
