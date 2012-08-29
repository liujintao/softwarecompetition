<%--
    Document   : selfmodify
    Created on : 2009-7-25, 9:12:09
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <jsp:useBean id="admin" class="com.ytu.xiao.Worker" scope="request">
       <jsp:setProperty name="admin" property="*"/>
   </jsp:useBean>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link href="styles.css" rel="stylesheet" type="text/css" />
    </head>
   <body style="background-color:#FFF">
       <div class="main-cont" style="width:auto;">
        <form action="modifysucced.jsp" method="post">
              <div class="cont-info-rember">
                   <div class="hd"><strong   style="font-size:14px; color:#0099ff;">修改您的个人信息：</strong></div>
                    <div class="finish-area">
            <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>姓名：</td>
                        <td><input class="ipt-normal" type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>旧密码:</td>

                        <td><input class="ipt-normal" type="password" name="oldpassword">
                           <%
                            if((String)(request.getParameter("passworderror"))!=null){
                            %>
                       <%="密码输入有误"%>
                       <% }%>

                            </td>
                    </tr>
                    <tr>
                        <td>新密码：</td>
                        <td><input  class="ipt-normal" type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td>再次确认新密码：</td>
                        <td><input  class="ipt-normal" type="password" name="newpassword"></td>
                    </tr>
                    <tr>
                        <td>电子邮箱：</td>
                        <td><input  class="ipt-normal" type="text" name="email"></td>
                    </tr>
                    <tr>
                        <td>联系电话：</td>
                        <td><input class="ipt-normal" type="text" name="tel"></td>
                    </tr>
                    <tr>
                        <td>个人简介：</td>
                        <td><textarea name="info"></textarea></td>
                    </tr>
            </table>
              </div>
              </div>
        <div class="mft" style="text-align:center; background-color:#FFF; margin-top:40px;"><span class="mft" style="text-align:center; background-color:#FFF; margin-top:40px;">
      <input type="image" src="images/submit-finish.gif" />
      </span></div>
        </form>
       </div>
    </body>
</html>
