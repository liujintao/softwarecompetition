<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>

<body style="background-color:#FFFFFF">
<%
            UserConnection teamCon=new UserConnection();
            Vector v=teamCon.getteam(((User)session.getAttribute("user")).getId());
        %>
<DIV class=mcont>
<DIV class=main-cont>
<DIV class=cont-info>
<H1>您指导的团队信息如下：</H1>
<DIV class=cont-info-rember>
<DIV class=finish-area>
<TABLE border=0 cellSpacing=0 cellPadding=0>
  <TBODY>

                <tr>
                    <td>团队序号</td>
                    <td>团队名称</td>
                    <td>团队组成</td>
                    <td>缴费情况</td>
                    <td>命题提交</td>
                    <td>命题序号</td>
                </tr>
                <%
                Enumeration e=v.elements();
                while (e.hasMoreElements()){

                Object[] obj=(Object[])e.nextElement();
                %>
             <TR height="auto">
                    <TD>
                        <%=(Integer)obj[0]%>
                    </TD>
                    <TD>
                        <%=(String)obj[1]%>

                    </TD>
                    <TD  class="tdt" style="padding-top:0px; padding-left:0px;">
                        <table style="margin:0px" cellpadding="0px" cellspacing="0px" border="0px">
                            <tr>
                                <td width="48%">
                                  姓名                           </td>
                          <td width="52%">
                                    职务                              </td>
                          </tr>
                             <% Vector memeber = teamCon.getTeamMemeber((Integer) obj[0]);
                                Enumeration es = memeber.elements();
                                while (es.hasMoreElements()) {
                                Object[] objm=(Object[])es.nextElement();
                            %>
                            <tr>
                                <td>
                                    <%=(String) objm[0]%>
                                </td>
                                <td>
                                    <%=(String) objm[1]%>
                                </td>
                            </tr>
                            <% }%>
                        </table>
                    </TD>
                    <TD>
                             <%=(String)obj[2]%>
                    </TD>

                    <td>
                        <%=(String)obj[3]%>
                    </td>
                     <td>
                        <%=(Integer)obj[4]%>
                    </td>
                    </TR>
                    <% } %>
            </TBODY></TABLE>
</DIV></DIV>

</DIV>
<DIV class=mft></DIV>
</DIV>
</DIV>
</body>
</html>
