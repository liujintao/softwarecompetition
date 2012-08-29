<%--
    Document   : modifysuccess
    Created on : 2009-7-21, 18:15:05
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="userinfo1" class="com.ytu.xiao.EnglishStudent" scope="page">
       <jsp:setProperty property="*" name="userinfo1"/>
   </jsp:useBean>
   <jsp:useBean id="conn" class="com.ytu.xiao.UserConnection" scope="page"/>
<html>
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
.content
{
Z-INDEX: 1; MARGIN: 0px auto; WIDTH: 995px; HEIGHT: auto;
}
-->
</style>
    </head>
    <body>
       <%
        String oldpassword=request.getParameter("oldpassword");
        int englishid=((User)(session.getAttribute("user"))).getId();
        if(conn.checkPassword(oldpassword, englishid, "englishstudent")==1){
        %>
        <%  userinfo1.setAccount(((User)session.getAttribute("user")).getAccount());
        conn.modify(userinfo1);%>
    <div>
<img src="../images/xeyes.png">   <h1 style="color:#0099ff">   修改成功 !! </h1>
    </div>

       <p>将在 <span id="mes" style="color:#FF0000;">5</span> 秒钟后返回个人首页！</p>
        <% }  else {  %>


          <h2  style="color:#FF0000;"> ╯﹏╰ 旧密码输入错误,请返回重新修改！</h2>


         <% } %>
    </body>
</html>
