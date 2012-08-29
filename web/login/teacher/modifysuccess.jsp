<%--
    Document   : modifysuccess
    Created on : 2009-7-21, 18:15:05
    Author     : xiao
--%>
<html>
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
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="userinfo3" class="com.ytu.xiao.Teacher" scope="request">
       <jsp:setProperty property="*" name="userinfo3"/>
   </jsp:useBean>
   <jsp:useBean id="conn" class="com.ytu.xiao.UserConnection" scope="page"/>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改成功</title>
    </head>
<body>
             <%
        String oldpassword=request.getParameter("oldpassword");
        int teacherid=((User)(session.getAttribute("user"))).getId();
        if(conn.checkPassword(oldpassword, teacherid, "teacher")==1){
        %>
       <% userinfo3.setAccount(((User)session.getAttribute("user")).getAccount());
        conn.modify(userinfo3);%>
    <div>
<img src="../images/xeyes.png">   <h1 style="color:#0099ff">   修改成功 !! </h1>
    </div>

       <p>将在 <span id="mes" style="color:#FF0000;">5</span> 秒钟后返回个人首页！</p>
        <% }  else {  %>


          <h2  style="color:#FF0000;"> ╯﹏╰ 旧密码输入错误,请返回重新修改！</h2>


          <% } %>
    </body>
    </html>