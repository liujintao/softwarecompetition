<%-- 
    Document   : scoresucceed
    Created on : 2009-7-27, 9:28:53
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
  <jsp:useBean id="getscore" scope="request" class="com.ytu.xiao.ScoreBean" >
    <jsp:setProperty name="getscore" property="*"/>
</jsp:useBean>
<jsp:useBean id="service" scope="page" class="com.ytu.xiao.DatabaseConnection"/>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <style type="text/css">
		<!--
		h1{
		display:block;
		margin:150px ;
		}
		-->
		</style>
        <script language="javascript" type="text/javascript">
           var i = 5;
            var intervalid;
         intervalid = setInterval("fun()", 1000);
          function fun() {
               if (i == 0) {
                   window.location.href = "score.jsp";
                  clearInterval(intervalid);
               }
              document.getElementById("mes").innerHTML = i;
            i--;
           }
       </script>
    </head>
    <body>
       <%
       int result;
       String anonymous=(String)(request.getParameter("anonymous"));
       if(anonymous.equals("no")){
                result=service.setScore(getscore.getId(), getscore.getType(), getscore.getScore(),getscore.getTname(),getscore.getSuggestion());
}
       else
                result=service.setScore(getscore.getId(), getscore.getType(), getscore.getScore(),getscore.getSuggestion());
        if(result==1){
            String first= ((String)(request.getParameter("first"))==null)?"N":"Y";
             String second= ((String)(request.getParameter("second"))==null)?"N":"Y";
              String third= ((String)(request.getParameter("third"))==null)?"N":"Y";
            service.setExamineint(getscore.getId(),first,second,third );


        %>
        <h1 style="display:block; font-size:28px; padding-top:20px; text-align:center; color:#575757;margin:0px">分数登记成功！</h1>
        <%
        }
        else if(result==0){
        %>
    <h1 style="display:block; font-size:28px; padding-top:20px; text-align:center; color:#575757;margin:0px"> 输入错误，该选手尚未缴费!</h1>
        <% }else { %>
         <h1 style="display:block; font-size:28px; padding-top:20px; text-align:center; color:#575757; margin:0px">无此ID!</h1>
         <% }%>
          <p style="color:#575757; font-size:12px; text-align:center; margin:0px">系统将在 <span id="mes" style="color:#FF0000;">5</span> 秒钟后返回！</p>
</body>
</html>
