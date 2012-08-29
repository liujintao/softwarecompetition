<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />

</head>
<body style="background-color:#fff;">
<%
            UserConnection mycon=new UserConnection();
            int softid=((User)session.getAttribute("user")).getId();
            int teamid=mycon.getTeamId(softid);
            Vector vec=mycon.getTeamMemeber(teamid);
            Team team=mycon.getTeam(teamid);
            %>
<div class="main-cont" style="width:auto;">
  <div class="cont-info-rember">
    <div class="hd"><strong  class="Cred" style="font-size:18px; color:#0099ff;">您的团队信息：</strong></div>
    <div class="finish-area">
      <table border="0" cellspacing="0" cellpadding="0">
        <tbody>
          <tr>
            <th>团队名称：</th>
            <td><%=team.getName()%></td>
          </tr>
          <tr>
            <th> 团队ID：</th>
            <td><%=teamid  %></td>
          </tr>
          <tr>
            <th>缴款情况：</th>
            <td><%=team.getMoney()  %></td>
          </tr>
          <tr>
            <th>论文提交：</th>
            <td><%=team.getPut() %></td>
          </tr>
          <tr>
            <th>指导老师：</th>
            <td><%=team.getTeacher()%></td>
          </tr>
          <tr>
            <th> 命题题目：</th>
            <td><%=team.getTitle()%></td>
          </tr>
        </tbody>
      </table>
      <table border="0" cellspacing="0" cellpadding="0" >
        <tr>
          <td class="styles1">队员姓名：</td>
          <td class="styles1">队员职务：</td>
        </tr>
        <%
                                Enumeration es =vec.elements();
                                while (es.hasMoreElements()) {
                                Object[] objm=(Object[])es.nextElement();
                            %>
        <tr>
          <td   height="auto"><%=(String) objm[0]%> </td>
          <td  height="auto"><%=(String) objm[1]%> </td>
        </tr>
        <% }%>
      </table>
      <%
            Date date1=new Date(2009, 12, 12, 0, 0, 0);
            Date date2=new Date();
            if(date1.after(date2))
                    {
            %>
      <img style="cursor:pointer" src="../images/changeteacher.jpg" border="0" usemap="#Map" />
      <map name="Map" id="Map">
        <area shape="rect" coords="2,1,114,47" href="changeteacher.jsp" />
      </map>
      
      
      <img src="../images/seeteacher.jpg" border="0" usemap="#Map4" style="cursor:pointer" />
<map name="Map4" id="Map4"><area shape="rect" coords="2,3,118,44" href="teachershow.jsp" /></map>
      <%  }  %>
      <% if((team.getMoney()).equals("N")){ %>
      <img src="../images/hMonney.jpg" border="0" usemap="#Map2" style="cursor:pointer" />
      <map name="Map2" id="Map2">
        <area shape="rect" coords="5,4,117,40" href="../../bank/ChinaBank.html" target="_blank" />
      </map>
      <% }%>
      <img src="../images/changetitle.jpg" border="0" usemap="#Map3" />
<map name="Map3" id="Map3"><area shape="rect" coords="2,3,120,46" href="changetitle.jsp" /></map>
    </div>
  </div>
</div>
</body>
</html>
