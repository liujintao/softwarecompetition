<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<jsp:useBean id="getAward" scope="page" class="com.ytu.xiao.DatabaseConnection"/>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#ffffff;">
 <% int i=0;
        String type=(String)(request.getParameter("type"));
        Vector v=getAward.getAward((String)(request.getParameter("award")), type);
               %><div class="main-cont">
 <form action="../../../admin/Background/responsible/modifysuccess.jsp" method="post">
   <DIV class=mcont>
<DIV class=main-cont>
<DIV class=cont-info>
<H1>您查看的获奖信息：</H1>
<DIV class=cont-info-rember>
<DIV class=finish-area>

<TABLE border=0 cellSpacing=0 cellPadding=0>
  <tr>
                    <td>序号</td>
                    <%if (type.equals("team")) { %>
                    <td>获奖团队</td>
                    <%  }  else { %>
                      <td>姓名</td>
                    <%}if (type.equals("team")) { %>
                    <td>团队题目</td>
                      <%  }  else { %>
                        <td>联系电话</td>
                              <%}if (type.equals("team")) { %>
                    <td>指导老师</td>
                      <%  }  else { %>
                         <td>电子邮箱</td>
                    <%}if (type.equals("team")) { %>
                    <td>文档题目</td>
                      <%  }  else { %>
                        <td>得分</td>
                          <% } %>
                </tr>
                   <%
                Enumeration e=v.elements();
                while (e.hasMoreElements()){
                    i++;
                Object[] obj=(Object[])e.nextElement();
                %>
                <tr>
                    <td>  <%=i%></td>
                    <td>   <%=(String)obj[0]%></td>
                    <td>   <%=(String)obj[1]%></td>
                    <td>   <%=(String)obj[2]%></td>
                    <td>   <%=(String)obj[3]%></td>
                </tr>
                <% } %>

           </TABLE>
</DIV></DIV>

</DIV>
</DIV>
</DIV>

 </form>
</div>
</body>
</html>
