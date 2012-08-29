<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>重新登录</title>
<link href="login/styles.css"  rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
<!--
function send()//检查表单是否填写完整
{

            var obj = document.form_login.account;
var obj1 = document.form_login.type;
var obj2 = document.form_login.password;
            if (obj.value.length==0)
            {

                obj.focus();
                alert("请输您的用户名和密码！");
                return false;

            }
else if(obj1.value==0){

                obj.focus();
                alert("请选择用户类型！");
                return false;

            }
else if(obj2.value==0){

                obj.focus();
                alert("请输入您的密码！");
                return false;

            }


}

//-->
</script>
</head>
<body style="background-color:#fff;">
<div id="wrapper" style="text-align:center">
<table width="995" border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <TD height="99" width="410" background="index/images/topback.jpg"><img src="index/images/logotitle.jpg"/></TD>
        <TD width="150" background="index/images/topback.jpg" >&nbsp;</TD>
        <TD background="index/images/topback.jpg"><UL class=nav>
            <LI class=navCurrent> <A href="index.jsp" target="_parent">首页</A> </LI>
            <LI><A href="intro/introFrame.html" target="_blank">简介</A> </LI>
            <LI><A href="infor/notice.jsp" target="_parent">信息</A> </LI>
            <LI><A href="service/cooperate.html" target="_parent">服务</A> </LI>
            <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A> </LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
<div class="main-cont" style="width:auto; padding-top:150px;">
  <form name="form_login" method="post" id="form1" action="login.do" onSubmit="return send()">
    <div class="cont-info-rember">
      <div class="hd" align="center"><strong  style="font-size:14px; color:#0099ff;">޸您输入的密码或账号有误，请重新输入！</strong></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>用户名：</th>
              <td><input  class="ipt-normal"  name="account"  type="text"  /></td>
            </tr>
            <tr>
              <th>用户类型：</th>
              <td><select name="type" style="width:150px">
                  <option style="color:#666" value="0">用户身份</option>
                  <option style="color:#000000" value="teacher1">命题教师</option>
                  <option  style="color:#000000" value="teacher2">指导教师</option>
                  <option style="color:#000000" value="softstudent">软件选手</option>
                  <option style="color:#000000" value="englishstudent">外语选手</option>
                </select></td>
            </tr>
            <tr>
              <th>密码：</th>
              <td><input  class="ipt-normal"  name="password" type="password"  /></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="mft" style="text-align:center; background-color:#FFF;">
      <span class="mft" style="text-align:center; background-color:#FFF;">
      <input type="image" src="login/images/submit_login.jpg"/>
      </span>
      <input type="image" src="login/images/clear.jpg" onClick="javascript:document.form1.reset(); return false;"/>
    </div>
  </form>
</div>
</div>
</body>
</html>
