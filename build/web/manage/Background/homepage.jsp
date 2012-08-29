<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body style="width:auto; background:transparent;">
<%!
            String userType(String type ){
                String result=null;
                if(type.equals("editor"))
                    result="编辑";
                else if(type.equals("examine"))
                    result="评审专家";
                else if(type.equals("jobseeker"))
                    result="就业推荐人员";
                else if(type.equals("responsible"))
                    result="大赛负责人";
                else if(type.equals("adminator"))
                     result="系统管理员";
                return result;
            }
        %>
    <%
    DatabaseConnection userAccount=new DatabaseConnection();
    Worker admin=userAccount.getWorker((String)(session.getAttribute("user")));   
         %>
<DIV class=main-cont>
<DIV class=cont-info>
<H1>欢迎进入大赛管理系统，<%=admin.getAccount() %>
</H1>
<DIV class=cont-info-rember>
<DIV class=hd><STRONG  class=Cred style="font-size:14px;">您的个人信息：</STRONG></DIV>
<DIV class=finish-area>
<TABLE border=0 cellSpacing=0 cellPadding=0>
  <TBODY>
  <TR>
    <TH>姓名：</TH>
    <TD><%=admin.getName()  %></TD>
  </TR>
  <TR>
    <TH>用户类型：</TH>
    <TD><%=userType(admin.getType())  %></TD>
  </TR>
    <TR>
    <TH>联系电话：</TH>
    <TD><%=admin.getTel()  %></TD>
    </TR>
    <TR>
    <TH>电子邮箱：</TH>
    <TD><%=admin.getEmail()  %></TD></TR>
    <TR>
    <TH>个人简介：</TH>
    <TD height="auto"><%=admin.getInfo()  %></TD></TR>
        </TBODY></TABLE>
</DIV></DIV>
</DIV>
</DIV>
</body>
</html>
