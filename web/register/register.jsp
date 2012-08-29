<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>注册新用户</TITLE>
<META content="text/html; " http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="style.css">
<script src="js/function.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
<!--
function test()
{
var Num="1234567890";
var Str=document.form1.account.value;
if(Str.length>16||Str.length<6)
{
alert("用户名不在有效字符限制内，请重新输入!");
document.form1.account.focus();
document.form1.account.value='';
}
else if  (Num.indexOf(Str.charAt(0))!=-1||Num.indexOf(Str.charAt(Str.length-1))!=-1)
{
alert("用户名不能以数字开头或结尾！！");
document.form1.account.value='';
document.form1.account.focus();
}
else if (escape(Str).indexOf("%u")!=-1)
{ alert("用户名不能含汉字，请重新输入！");
document.form1.account.value='';
document.form1.account.focus();
}
}
//-->
</script>
<script language="javascript" type="text/javascript">
<!--
function  isNumber(String)//检查联系方式！
{
var  Letters="1234567890-";
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
function  CheckTel()
{
if(!isNumber(document.form1.tel.value))  {
alert("您的联系方式不合法！");
document.form1.tel.value='';
document.form1.tel.focus();
}
}

//-->
</script>
<script language="javascript" type="text/javascript">
<!--
function CheckEmail(a) //检查电子邮箱！
{ var i=a.length;
var temp = a.indexOf('@');
var tempd = a.indexOf('.');
if (temp > 1) {
if ((i-temp) > 3){
if ((i-tempd)>0){
return 1;
}
}
}
alert("您的电子邮箱格式有误!!");
}
//-->
</script>
<script language="javascript" type="text/javascript">
<!--
function issame(str1,str2)  //检查两次密码输入
{
if (str1==str2)
{return(true);}
else
{return(false);}
}

function CheckPass()
{
var Str=document.form1.password.value;
if(Str.length>16||Str.length<6)
{
alert("密码长度不在有效字符限制内，请重新输入!");
document.form1.password.focus();
document.form1.password.value='';
document.form1.passwordconfirm.value='';

}
else if(!issame(document.form1.password.value,document.form1.passwordconfirm.value))
{alert("两次密码输入不一致！")
document.form1.password.focus();
document.form1.password.value='';
document.form1.passwordconfirm.value='';
}
}
//-->
</script>
<script language="javascript" type="text/javascript">
<!--
function ischinese(s){   //检测真实姓名为中文
var ret=true;
for(var i=0;i<s.length;i++)
ret=ret && (s.charCodeAt(i)>=10000);
return ret;
}
-->
</script>
<script language="javascript" type="text/javascript">
<!--//真实姓名不包括数字
function IsNum()
{
var Num="1234567890";
var Str=document.form1.name.value;
for(i=0;i<Str.length;i++)
{
if  (Num.indexOf(Str.charAt(i))!=-1)
{
return true;
}
}
}
function CheckName()
{
if(IsNum())
{alert("真实姓名不能包含数字！！");
	document.form1.name.focus();
	document.form1.name.value='';
}}
-->
</script>
<script language="javascript" type="text/javascript">
<!--//检测个人简介
function testinfo()
{
var Str=document.form1.info.value;
if(Str.length>250)
alert("您输入的简介过多！");
}
-->
</script>
<script language="javascript">
<!--
function send()//检查表单是否填写完整 
{ 

            var obj = document.form1.account;   
var objtype = document.form1.type; 
var objpassword = document.form1.password;  
 
var objtel = document.form1.tel;  
var objmail = document.form1.email;   

var objinfo = document.form1.info;   


 
            if (obj.value.length==0)
            {
                 
                obj.focus();
                alert("请输入您的用户名！");
                return false; 

            }
else if(objtype.value==0){
                 
                objtype.focus();
                alert("请选择你的注册类型！");
                return false; 

            }
			else if(objpassword.value==0){
                 
                objtype.focus();
                alert("请输入您的密码！");
                return false; 


            }
else if(objtel.value==0){
                 
                objtel.focus();
                alert("请输入您的联系方式！");
                return false; 

            }
					else if(objmail.value==0){
                 
                objmail.focus();
                alert("请输入您的电子邮箱！");
                return false; 

            }else if(objinfo.value==0){
                 
                objinfo.focus();
                alert("请输入您的个人简介！");
                return false; 

            }
					
			
				
				
        
    
} 

//-->
</script>
</HEAD>
<BODY>
<div id="wrapper">
  <table width="995" border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <td height="99" width="410"><img src="images/logotitle.jpg"/></td>
        <td width="150px" background="images/topback.jpg" >&nbsp;</td>
        <TD background="images/topback.jpg"><UL class=nav>
            <LI ><A href="../index.jsp" target="_parent">首页</A> </LI>
            <LI><A href="../intro/introFrame.html" target="_parent">简介</A> </LI>
            <LI><A href="../infor/notice.jsp" target="_parent">信息</A> </LI>
            <LI><A href="../service/cooperate.html" target="_parent">服务</A> </LI>
            <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A></LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
  <DIV class="content">
    <div class="mhd">
      <H1>用户注册</H1>
    </div>
    <DIV class="mcont">
      <FORM name="form1" method="post" action="../register/register.do" onSubmit="return send()">
        <DIV class="main-cont">
          <DIV class="main-cont-tit">
            <H2>创建您的帐号</H2>
          </DIV>
          <table style="TABLE-LAYOUT: fixed" class="cont-tab" cellpadding="0"  cellspacing="0">
            <tbody>
              <tr >
                <td width="273" class="td1">用户名：<span class="nes">*</span></td>
                <td width="416" class="td2"><input name="account"  type="text"
      class="inp ipt-normal" style="WIDTH: 205px; FONT-WEIGHT: bold"  maxlength="16" onBlur="test()">
                  <% String error = (String) request.getAttribute("error");
        if (error != null) {
            out.println(error);
        }
                    %></td>
                <td width="179" class=td3><DIV class=info-pop id=div_uname_rule>
                    <DIV class=info-pop-c>
                      <DIV
      class=cont>·6~18个字符，包括字母、数字<BR>
                        ·字母开头，不区分大小写<BR>
                      </DIV>
                    </DIV>
                  </DIV></td>
              </tr>
              <tr id="tr_input_username">
                <td height="90" class="td1">注册类型：<span class="nes">*</span></td>
                <td height="90" valign="top" class="td2" style="FONT-SIZE: 14px"><span class="td2" style="FONT-SIZE: 14px"><span class="td2" style="FONT-SIZE: 14px"><span class="td2" style="FONT-SIZE: 14px">
                  <select style="width:251px; font-size:20px; border:#a0b4c5 1px solid;" name="type">
                    <option style="color:#000" value="0">请选择用户类型：</option>
                    <option value="teacher1" style="color:#000000;">命题老师</option>
                    <option value="teacher2" style="color:#000000;">指导老师</option>
                    <option value="softstudent" style="color:#000000;">软件选手</option>
                    <option value="englishstudent" style="color:#000000;">外语选手</option>
                  </select>
                  </span></span></span></td>
                <td class=td3>&nbsp;</td>
              </tr>
              <tr>
                <td height="72" class=td1>密　码：<span class=nes>*</span></td>
                <td class=td2><input name="password"
      type="password"  class="inp ipt-normal"  maxlength="16"/>
                </td>
                <td class="td3"><DIV class=info-pop id=div_uname_rule>
                    <DIV class=info-pop-c>
                      <DIV
      class=cont>·6～16个字符（字母、数字、特殊符号）,区分大小写<BR>
                      </DIV>
                    </DIV>
                  </DIV></td>
              </tr>
            </tbody>
            <tr>
              <td height="72" class="td1">再次输入密码：<span class="nes">*</span></td>
              <td class="td2"><input
      name="passwordconfirm" type="password"  class="inp ipt-normal"   maxlength="16" onBlur="CheckPass()">
              </td>
              <td class="td3">&nbsp;</td>
            </tr>
          </table>
          <DIV class="main-cont-tit">
            <H2>个人信息设置</H2>
            <SPAN class="fle Cgray">（以下信息非常重要，请慎重填写）</SPAN></DIV>
          <table width="871" cellpadding=0 cellspacing=0 class=cont-tab style="TABLE-LAYOUT: fixed">
            <!--DWLayoutTable-->
            <tbody>
              <tr>
                <td width="269" height="70" class=td1>真实姓名：<span class=nes>*</span></td>
                <td width="261" valign="top" class=td2><input type="text"  class="inp ipt-normal"  maxlength=36 name="name" onBlur="CheckName()" />
                  &nbsp;</td>
                <td colspan="2" class=td3><DIV class=info-pop id=div_password_conf >
                    <DIV class=info-pop-c>
                      <DIV class=cont>真实姓名可包括英文或汉字！！<BR>
                      </DIV>
                    </DIV>
                  </DIV></td>
                <td width="13"></td>
              </tr>
              <tr  id=tr_cusproblem>
                <td height="45" class=td1>联系手机：<span class=nes>*</span></td>
                <td class=td2><input class="inp ipt-normal"
      maxlength=13 type="text" name="tel" onBlur="CheckTel()"/></td>
                <td colspan="2" class="td3"><DIV class=info-pop id=div_password_conf >
                    <DIV class=info-pop-c>
                      <DIV class=cont>联系方式只能包括数字！！<BR>
                      </DIV>
                    </DIV>
                  </DIV></td>
                <td></td>
              </tr>
              <tr>
                <td height="42" valign="top" class=td1>E-mail：<span class=nes>*</span></td>
                <td  valign="top" class=td2><input  class="inp ipt-normal"
      maxlength=36 type="text" name="email" onBlur="CheckEmail(this.value)"/></td>
                <td width="320" class="td3"><DIV class=info-pop id=div_password_conf >
                    <DIV class=info-pop-c>
                      <DIV class=cont>电子邮箱必须包含'@'和'.'！！<BR>
                      </DIV>
                    </DIV>
                  </DIV></td>
              </tr>
              <tr>
                <td height="100" valign="top" class="td1">个人简介：<span class=nes>*</span></td>
                <td colspan="2" valign="top" class="td2"><label></label>
                  <textarea name="info" id="textarea" cols="45" rows="5" onBlur="testinfo()"></textarea  ></td>
                <td width="5">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </tbody>
          </table>
          <TABLE style="TABLE-LAYOUT: fixed" class=cont-tab cellSpacing=0 cellPadding=0>
            <TBODY>
              
              <TR>
                <TD class="td1">&nbsp;</TD>
                <TD class="td2"><input  type="image" src="images/submit.jpg" /></TD>
                <TD
class="td3">&nbsp;</TD>
              </TR>
            </TBODY>
          </TABLE>
        </DIV>
      </FORM>
    </DIV>
    <DIV class="mft"></DIV>
  </DIV>
  <DIV class="footer"><A href="http://www.softqilu.com/new/"
target="_blank">关于我们</A>&nbsp;&nbsp;&nbsp;<A
href="http://net.china.com.cn/index.htm"
target=_blank>举报违法信息</A>&nbsp;&nbsp;<A href="http://www.softqilu.com/new/"
target=_blank>客户服务</A><BR>
  <A href="http://www.law-star.com/" target=_blank>相关法律</A>&nbsp;&nbsp;|&nbsp;&nbsp;版权所有&nbsp;&copy;&nbsp;1997-2009 </DIV>
</div>
</BODY>
</HTML>
