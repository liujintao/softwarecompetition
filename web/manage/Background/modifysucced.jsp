<%--
    Document   : modifysuccess
    Created on : 2009-7-21, 18:15:05
    Author     : xiao
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="admin" class="com.ytu.xiao.Worker" scope="request">
       <jsp:setProperty name="admin" property="*"/>
   </jsp:useBean>
      <jsp:useBean id="modifyWorker" class="com.ytu.xiao.DatabaseConnection" scope="page"/><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改成功</title>
<script language="javascript" type="text/javascript">
           var i = 5;
            var intervalid;
         intervalid = setInterval("fun()", 1000);
          function fun() {
               if (i == 0) {
                   window.location.href = "homepage.jsp";
                  clearInterval(intervalid);
               }
              document.getElementById("mes").innerHTML = i;
            i--;
           }
       </script>
<style type="text/css">
<!--
body {
	background-color:#f7f9fd;
	margin:0px auto;
	text-align:center;
	font-size:12px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	border:#bebebe 1px solid;
}
.content {
	Z-INDEX: 1;
	MARGIN: 0px auto;
	WIDTH: 995px;
	HEIGHT: auto;
}
-->
</style>
</head>
<body>
<%  String oldpassword=(String)(request.getParameter("oldpassword"));
        String account=(String)session.getAttribute("user");
        if(modifyWorker.checkPassword(oldpassword, account)==1)
            {
        %>
<%      admin.setAccount(account);
                if(modifyWorker.modify(admin)==1){
          %>

<div> <img src="images/Alert Note.png"s>
  <h1 style="color:#0099ff"> 修改成功 !! </h1>
</div>
<p>将在 <span id="mes" style="color:#FF0000;">5</span> 秒钟后返回个人首页！</p>
<% }  else {  %>
<h2  style="color:#FF0000;"> ╯﹏╰ 旧密码输入错误,请返回重新修改！</h2>
<% } %>
<% }else { %>
<%
           response.sendRedirect("selfmodify.jsp?passworderror=error");
           }  %>
</body>
</html>
