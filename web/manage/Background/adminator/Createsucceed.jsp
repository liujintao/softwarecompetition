<%-- 
    Document   : Createsucceed
    Created on : 2009-7-25, 10:15:40
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
  <jsp:useBean id="worker" scope="request" class="com.ytu.xiao.Worker">
       <jsp:setProperty name="worker" property="*"/>
   </jsp:useBean>
   <jsp:useBean id="createWorker" class="com.ytu.xiao.DatabaseConnection" scope="page"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
        <link href="../styles.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--

.STYLE2 {
	color: #FF0000
}
-->
</style>
</head>
<body style="background-color:#fff">
    
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
                return result;
            }
        %>
        <% if(createWorker.checkAccount(worker.getAccount())==1){ %>
          <%
                if(createWorker.Create(worker)==1){
          %>
        
    <div class="cont-info-rember">
      <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">创建成功，账户的信息：</strong></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>用户名：</th>
              <td><%=worker.getAccount()   %></td>
            </tr>
            <tr>
              <th>姓名：</th>
              <td><%=worker.getName()   %>
                
                </td>
            </tr>
            <tr>
              <th>密码：</th>
              <td><%=worker.getPassword()  %></td>
            </tr>
            <tr>
              <th>用户类型：</th>
              <td><%=userType(worker.getType())%></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
        <% }else{ %>
       <h2 class="STYLE2" >创建失败,请稍后再试</h2>
        <% } %>
        <% } else {
        request.setAttribute("accounterror", "用户名已经存在");
        response.sendRedirect("AccountCreate.jsp");}
            %>

</body>
</html>
