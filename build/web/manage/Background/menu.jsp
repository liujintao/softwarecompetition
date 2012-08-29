<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
<style>
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
	background-image:url(../../admin/Background/images/leftback.jpg);
	background-repeat:repeat-y;
}
.STYLE1 {
	font-size: 16px
}
-->
</style>
</head>
<body style="width:198px;">
<%
            DatabaseConnection connn=new DatabaseConnection();
            %>
        <%  String type=connn.getWorker((String)(session.getAttribute("user"))).getType(); %>
          <% if(type.equals("adminator")){    %>
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
      <td height="37" valign="top" class="td1" >
        <a href="homepage.jsp" target="mainFrame">个人首页&gt;&gt;</a>      </td>
    </tr>
    <tr>
      <td height="66"  valign="top" class="td1" ><label>
        <a href="selfmodify.jsp" target="mainFrame">个人信息修改&gt;&gt;</a>       
        </label>      </td>
    </tr>
    <tr>
    <td height="37"  valign="top" class="td1" ><a href="adminator/AccountCreate.jsp" target="mainFrame">创建账户&gt;&gt;</a>    </tr>   
    <tr>
      <td height="37"  valign="top" class="td1"><a href="adminator/AccountDelete.jsp" target="mainFrame">删除账号&gt;&gt;</a></td>
    </tr>
    <tr>
      <td height="37"  valign="top" class="td1"><a href="adminator/showuser.jsp" target="mainFrame">查看账号&gt;&gt;</a></td>
    </tr>
    <tr>
      <td   valign="top" class="td1" ><a href="javascript:location.replace('/websystem/manage/Background/logout.jsp')" target="_parent">注销登录&gt;&gt;</a> </td>
    </tr>
    <tr>
      <td height="34" valign="top" ><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
    <tr>
      <td height="65" valign="top" background="../../admin/Background/images/leftback.jpg"><img src="images/loginleft.jpg" />&nbsp;</td>
    </tr>
    <tr>
      <td height="100%" valign="top" background="../../admin/Background/images/leftback.jpg"><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
  </table>
</div>
<% } else if(type.equals("responsible")){ %>
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
      <td height="37" valign="top" class="td1" >
        <a href="homepage.jsp" target="mainFrame">个人首页&gt;&gt;</a>        
      </td>
    </tr>
    <tr>
      <td height="66"  valign="top" class="td1" ><label>
        <a href="selfmodify.jsp" target="mainFrame">个人信息修改&gt;&gt;</a>       
        </label>
      </td>
    </tr>
    <tr>
      <td height="37"  valign="top" class="td1" ><a href="responsible/award.jsp" target="mainFrame">获奖人员确认&gt;&gt;</a>
    </tr>   
    <tr>
      <td height="37"  valign="top" class="td1"><a href="responsible/company.jsp" target="mainFrame">赞助单位管理&gt;&gt;</a></td>
    </tr>
    <tr>
      <td height="37"  valign="top" class="td1"><a href="responsible/school.jsp" target="mainFrame">巡回报告会&gt;&gt;</a></td>
    </tr>
      <tr>
      <td height="37"  valign="top" class="td1"><a href="responsible/checkfee.jsp" target="mainFrame">学生缴费管理&gt;&gt;</a></td>
    </tr>
      <tr>
      <td height="37"  valign="top" class="td1"><a href="responsible/checkteacher.jsp" target="mainFrame">注册教师查看&gt;&gt;</a></td>
    </tr>
     <tr>
      <td height="37"  valign="top" class="td1"><a href="responsible/young.jsp" target="mainFrame">青年教师培训&gt;&gt;</a></td>
    </tr>
     <tr>
      <td height="37"  valign="top" class="td1"><a href="responsible/summer.jsp" target="mainFrame">夏令营报名管理&gt;&gt;</a></td>
    </tr>
    <tr>
      <td   valign="top" class="td1" ><a href="javascript:location.replace('/websystem/manage/Background/logout.jsp')" target="_parent">注销登录&gt;&gt;</a> </td>
    </tr>
    <tr>
      <td height="34" valign="top" ><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
    <tr>
      <td height="65" valign="top" background="../../admin/Background/images/leftback.jpg"><img src="images/loginleft.jpg" />&nbsp;</td>
    </tr>
    <tr>
      <td height="100%" valign="top" background="../../admin/Background/images/leftback.jpg"><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
  </table>
</div>
<% } else if(type.equals("examine")){ %>
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
      <td height="37" valign="top" class="td1" >
        <a href="homepage.jsp" target="mainFrame">个人首页&gt;&gt;</a>        
      </td>
    </tr>
    <tr>
      <td height="66"  valign="top" class="td1" ><label>
        <a href="selfmodify.jsp" target="mainFrame">个人信息修改&gt;&gt;</a>       
        </label>
      </td>
    </tr>
    <tr>
      <td height="37"  valign="top" class="td1"> <a href="examine/titleindex.jsp" target="mainFrame">审查命题&gt;&gt;</a>
    </tr>   
    <tr>
      <td height="37"  valign="top" class="td1"><a href="examine/score.jsp" target="mainFrame">核定分数&gt;&gt;</a></td>
    </tr>
    <tr>
      <td height="37"  valign="top" class="td1"><a href="examine/showscore.jsp" target="mainFrame">查看评分&gt;&gt;</a></td>
    </tr>
    <tr>
      <td   valign="top" class="td1" ><a href="javascript:location.replace('/websystem/manage/Background/logout.jsp')" target="_parent">注销登录&gt;&gt;</a> </td>
    </tr>
    <tr>
      <td height="34" valign="top" ><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
    <tr>
      <td height="65" valign="top" background="../../admin/Background/images/leftback.jpg"><img src="images/loginleft.jpg" />&nbsp;</td>
    </tr>
    <tr>
      <td height="100%" valign="top" background="../../admin/Background/images/leftback.jpg"><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
  </table>
</div>
<% } else if(type.equals("jobseeker")){ %>
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
      <td height="37" valign="top" class="td1 ">
        <a href="homepage.jsp" target="mainFrame">个人首页&gt;&gt;</a>        
      </td>
    </tr>
    <tr>
      <td height="66"  valign="top" class="td1" ><label>
        <a href="selfmodify.jsp" target="mainFrame">个人信息修改&gt;&gt;</a>       
        </label>
      </td>
    </tr>
    <tr>
      <td height="37"  valign="top" class="td1"> <a href="jobseeker/main.jsp" target="mainFrame">
                        编辑就业信息&gt;&gt;</a>
    </tr>
      <tr>
      <td   valign="top" class="td1" ><a href="javascript:location.replace('/websystem/manage/Background/logout.jsp')" target="_parent">注销登录&gt;&gt;</a> </td>
    </tr>
    <tr>
      <td height="34" valign="top" ><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
    <tr>
      <td height="65" valign="top" background="../../admin/Background/images/leftback.jpg"><img src="images/loginleft.jpg" />&nbsp;</td>
    </tr>
    <tr>
      <td height="100%" valign="top" background="../../admin/Background/images/leftback.jpg"><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
  </table>
  </div>
      <% }
        else if(type.equals("editor")){    %>
        <div class="left">
        <table width="198"  height="100%" border="0" cellpadding="0" cellspacing="0" background="images/loginback.jpg">
                 <tr>
      <td width="198"  height="54" valign="top"><img src="images/top1.jpg" width="198" height="27"/></td>
    </tr>
    <tr>
      <td height="37" valign="top"  class="td1"  style="font-size:18px;" ><img src="images/login.gif" width="17" height="16" /><b> 用户信息:</b></td>
    </tr>
                <tr>
                    <td height="37" valign="top" class="td1 "><a href="homepage.jsp" target="mainFrame" >个人首页</a></td>
                </tr>
                <tr>
                    <td height="66"  valign="top" class="td1"><a href="selfmodify.jsp" target="mainFrame">修改个人信息</a></td>
                </tr>
                <tr>
                    <td height="37"  valign="top" class="td1"><a href="editor/main.jsp" target="mainFrame">
                        编辑文章
                    </a></td>
                </tr>
                  <tr>
      <td   valign="top" class="td1" ><a href="javascript:location.replace('/websystem/manage/Background/logout.jsp')" target="_parent">注销登录&gt;&gt;</a> </td>
    </tr>
    <tr>
      <td height="34" valign="top" ><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
    <tr>
      <td height="65" valign="top" background="../../admin/Background/images/leftback.jpg"><img src="images/loginleft.jpg" />&nbsp;</td>
    </tr>
    <tr>
      <td height="100%" valign="top" background="../../admin/Background/images/leftback.jpg"><!--DWLayoutEmptyCell-->&nbsp;</td>
    </tr>
        </table>
        </div>
        <% } %>
</body>
</html>
