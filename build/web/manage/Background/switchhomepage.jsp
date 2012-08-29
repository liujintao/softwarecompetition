<%--
    Document   : switchhompage
    Created on : 2009-7-28, 8:28:39
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.DatabaseConnection"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>注册新用户成功</TITLE>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<LINK
rel=stylesheet type=text/css href="styles.css">
</HEAD>
<BODY style="background-color:#FFFFFF">
    <%!String trans(String type){
        String result=null;
        if(type.equals("adminator"))
            result="系统管理员";
        else if(type.equals("jobseeker"))
            result="就业服务人员";
        else if(type.equals("examine"))
            result="评审老师";
        else if(type.equals("responsible"))
            result="大赛负责人";
        else
            result="编辑";
        return result;

        }


           %>
<div id="wrapper">
  <DIV class="content">
    <DIV class=mcont>
      <!-- 分拆补充资料部分 Start -->
      <DIV class="main-cont">
        <DIV class=cont-info>
          <H1>欢迎您进入大赛信息管理系统！</H1>
          <%  DatabaseConnection connn=new  DatabaseConnection();
    String types=connn.getWorker((String)(session.getAttribute("user"))).getType();  %>
          <DIV class=cont-info-det>您的用户权限是<strong><%=trans(types)    %></strong></DIV>
          <DIV class=cont-info-rember>
            <DIV class=hd></DIV>
            <DIV class=finish-area>

            </DIV>
          </DIV>
          <span class="hd" style="text-align:center"><img src="images/welcome.jpg" width="397" height="310"></span></DIV>
      </DIV>
    </DIV>
  </DIV>

</div>
</BODY>
</HTML>
