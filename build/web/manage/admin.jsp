<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>大赛管理系统</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
<!--
function send()//检查表单是否填写完整 
{ 

            var objaccount= document.form1.account;   
var objpassword = document.form1.password;   
            if (objaccount.value.length==0)
            {
                 
                objaccount.focus();
                alert("请输入您的用户名！");
                return false; 

            }
else if(objpassword.value==0){
                 
                objpassword.focus();
                alert("请输入您的密码！");
                return false; 

            }
    
} 

//-->
</script>
</head>
<body>
<div id="wrapper">
  <table width="995" border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <td height="99" width="410"  background="Background/images/topback.jpg"><img src="Background/images/logotitle.jpg" /></td>
        <TD width="150" background="Background/images/topback.jpg" >&nbsp;</TD>
        <TD background="Background/images/topback.jpg"><UL class=nav>
            <LI class=navCurrent><A href="../index.jsp" target="_parent">首页</A> </LI>
            <LI><A href="../intro/introFrame.html" target="_parent">简介</A> </LI>
            <LI><A href="../infor/notice.jsp" target="_parent">信息</A> </LI>
            <LI><A href="../service/cooperate.html" target="_parent">服务</A> </LI>
            <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A> </LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
  <div>
    <h1>欢迎进入大赛后台管理系统!</h1>
  </div>
  <%  String adminerror=(String)(session.getAttribute("adminerror"));
 %>
  <form method="post" action="../manage/adminlogin.do" name="form1" onsubmit="return send()">
    <div class="cont-info-rember">
      <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">输入用户名和密码，然后进行管理</strong></div>
      <div class="finish-area">
        <%   if(adminerror!=null)  { %>
        用户名或密码有误，请重新输入
        ！
        <% }  %>
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>用户名:</th>
              <td><input  type="text" name="account" class="ipt-normal"/></td>
            </tr>
            <tr>
              <th>密码:</th>
              <td><input  type="password" name="password" class="ipt-normal"/></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="mft" style="text-align:center; background-color:#FFF;">
      <input type="image" src="Background/images/submit.jpg" />
    </div>
  </form>
</div>
</body>
</html>
