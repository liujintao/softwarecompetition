<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
<!--
function  isNumber(String)//检查ID！
{
var  Letters="1234567890";
var  i;
var  c;
if(String.charAt(0)=='-')
return  false;
if(String.charAt(String.length-1)=='-')
return  false;
for(i=0;i< String.length;i++)
{
c=String.charAt(i);
if  (Letters.indexOf(c)<0)
return  false;
}
return  true;
}
function  CheckID()
{
if(!isNumber(document.form1.teacherid.value))  {
alert("您输入的ID不合法！");
document.form1.teacherid.focus();
return false;
}
}

//-->
</script>
   <script language="javascript" type="text/javascript">
           var i = 5;
            var intervalid;
         intervalid = setInterval("fun()", 1000);
          function fun() {
               if (i == 0) {
                   window.location.href = "teaminfo.jsp";
                  clearInterval(intervalid);
               }
              document.getElementById("mes").innerHTML = i;
            i--;
           }
       </script>
</head>
<body style="background-color:#fff;">
<% String teacherid=request.getParameter("teacherid");
        if(teacherid==null) { %>
<div class="main-cont" style="width:auto; padding-top:50px;">
  <form action="changeteacher.jsp" method="get" name="form1" onsubmit="return CheckID()">
    <div class="cont-info-rember">
      <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">޸输入指导老师的ID，按确认键提交</strong></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>请输入指导老师id:</th>
              <td><input  class="ipt-normal"  name="teacherid"/></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="mft" style="text-align:center; background-color:#FFF;">
      <img src="../images/seeteacher.jpg" border="0" usemap="#Map4" style="cursor:pointer" />
<map name="Map4" id="Map4"><area shape="rect" coords="2,3,118,44" href="teachershow.jsp" /></map><input type="image" src="../images/submit-finish.gif" />
    </div>
  </form>
<%  } else {

            int userid = ((User) session.getAttribute("user")).getId();
            UserConnection change = new UserConnection();
            try{
            if (change.setTeacher(Integer.parseInt(teacherid), change.getTeamId(userid)) == 1)
            {
  %>
  <p style="color:#0033FF; font-size:18px; text-align:center; margin:200px " >提交成功，系统将在
<span id="mes" style="color:#FF0000;">5</span> 秒钟后自动返回团队信息!</p>
   <%    response.setHeader("Refresh", "3;url=/websystem/login/softstudent/teaminfo.jsp");  %>
 <% } else


    {%>
  <h1 style="color:#bebebe;">输入ID错误</h1>
  <%  }}
            catch(Exception e){
                                      %>
   <h1 style="color:#bebebe;">请输入ID！</h1>
                                      <%  }  }%>
</div>
</body>

</html>
