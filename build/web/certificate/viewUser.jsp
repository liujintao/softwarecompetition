<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.User" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML><HEAD><TITLE>证书</TITLE>
<META http-equiv=content-type content="text/html; charset=UTF-8">
<META content=all name=robots>
<STYLE type=text/css>
BODY {
	BACKGROUND-POSITION: center top; BACKGROUND-IMAGE: url(http://photocdn.sohu.com/20070314/Img248724927.gif); MARGIN: 0px; BACKGROUND-REPEAT: repeat-y; 
}
TD {
	FONT-SIZE: 12px; COLOR: #454545; LINE-HEIGHT: 18px; FONT-FAMILY: ,verdana
}
BODY {
	FONT-SIZE: 12px; COLOR: #454545; LINE-HEIGHT: 18px; FONT-FAMILY: ,verdana
}
INPUT {
	FONT-SIZE: 12px; COLOR: #454545; LINE-HEIGHT: 18px; FONT-FAMILY: ,verdana
}
SELECT {
	FONT-SIZE: 12px; COLOR: #454545; LINE-HEIGHT: 18px; FONT-FAMILY: ,verdana
}
.wz14_black {
	FONT-WEIGHT: normal; FONT-SIZE: 14px; COLOR:#333333 ; LINE-HEIGHT: 22px; FONT-STYLE: normal; FONT-VARIANT: normal
}
.wz14_black A:link {
	COLOR: #333333; TEXT-DECORATION: none
}
.wz14_black A:visited {
	COLOR: #333333; TEXT-DECORATION: none
}
.wz14_black A:hover {
	COLOR: #a76305; TEXT-DECORATION: underline
}
.STYLE1 {
	font-size: 24px;
	color: #000000;
}
.STYLE2 {
	font-size: 18px;
	color: #000000;
	font-family: "宋体";
}
.STYLE3 {
	font-family: "华文行楷";
	font-size: 36px;
}
</STYLE>
<META content="MSHTML 6.00.2900.5803" name=GENERATOR></HEAD>

<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<%
  User user=(User)request.getAttribute("User");
  if(user.getName()==null || user.getAward()==null || user.getJob()==null || user.getCid()==null)

  {%>
<h1 style="display:block; font-size:28px; padding-top:20px; text-align:center"> 错误，请检查后重新输入!</h1>
  <%}else{%>
<CENTER>
  <DIV class=block1>
<CENTER>
<TABLE cellSpacing=5 cellPadding=0 width=486 bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD vAlign=top align=left width=476>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD><img height=201 src="images/top.jpg"  width=808></TD>
        </TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width="172%"
      background=images/middle.jpg border=0>
        <TBODY>
        <TR>
          <TD align=middle height=90>
            <TABLE cellSpacing=0 cellPadding=0 width=809 border=0>
              <!--DWLayoutTable-->
              <TBODY>
              <TR>
                <TD width="93" height="153">&nbsp;</TD>
                <TD width="795" align="left" valign="top" class=wz14_black style="LINE-HEIGHT: 24px; "><p><STRONG><span class="STYLE1">
                  
                  <%=user.getName()%></span>
                </STRONG >同学:</p>
                  <p class="STYLE2">参加第七届《齐鲁大学生计算机软件设计及外语大赛》，在比赛中获</p>
                  <p>
                    <center><span class="STYLE3">
                      <%=user.getAward()%>等奖</span>
                    </center>
                    </p>                  <p> <span class="STYLE2" style="font-size:14px; ">工作:<%=user.getJob()%> 序列号：<%=user.getCid()%></span>                  </p></TD>
              </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD><img
            height=207
            src="images/bottom.jpg"
            width=808 border=0></A></TD>
        </TR></TBODY></TABLE></TD>
    </TR></TBODY></TABLE>
</CENTER></DIV><SOHUADCODE></SOHUADCODE>
</CENTER>
</BODY></HTML><%
  }%>

