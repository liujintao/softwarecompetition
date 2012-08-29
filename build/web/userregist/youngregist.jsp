<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>注册新用户</TITLE>
<META content="text/html; charset=GBK" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="style.css">
<script language="javascript">
<!--
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
<script language="javascript">
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
alert("您的电话号码不合法！");
document.form1.tel.focus();
document.form1.tel.value='';
}
} 
-->
</script>
<script language="javascript">
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
a='';     
}      
//-->
</script>
<script language="javascript" type="text/javascript">
<!--//检测个人简介
function testinfo()
{
var Str=document.form1.location.value;
if(Str.length>25)
alert("您输入的住宿信息过多！");
}
-->
</script><script language="javascript">
<!--
function send()//检查表单是否填写完整 
{ 

           
 var objname = document.form1.name;  

var objtel = document.form1.tel;  
var objmail = document.form1.email;   

var objlocation = document.form1.location;   



 
            if (objname.value.length==0)
            {
                 
                objname.focus();
                alert("请输入您的姓名！");
                return false; 

            }
else if(objtel.value==0){
                 
                objtel.focus();
                alert("请选择你的联系方式！");
                return false; 

            }

					else if(objmail.value==0){
                 
                objmail.focus();
                alert("请输入您的电子邮箱！");
                return false; 

            }else if(objlocation.value==0){
                 
                objlocation.focus();
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
        <TD width="150px" background="images/topback.jpg" >&nbsp;</td>
        <TD background="images/topback.jpg"><UL class=nav>
            <LI ><A href="../index.jsp" target="_parent">首页</A> </LI>
            <LI><A href="../intro/introFrame.html" target="_parent">简介</A> </LI>
            <LI><A href="../infor/notice.jsp" target="_parent">信息</A> </LI>
            <LI><A href="../service/cooperate.html" target="_parent">服务</A> </LI>
            <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A> </LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
  <DIV class="content">
    <div class="mhd">
      <H1>青年教师注册</H1>
    </div>
    <DIV class="mcont">
         <form action="young.do" method="post" name="form1" onSubmit="return send()">
        <DIV class="main-cont">
          <DIV class="main-cont-tit">
            <H2>青年教师注册</H2>
          </DIV>
          <table style="TABLE-LAYOUT: fixed" class="cont-tab" cellpadding="0"  cellspacing="0">
            <!--DWLayoutTable-->
            <tbody>
              <tr >
                <td width="269" height="58" class="td1">姓名：<span class="nes">*</span></td>
                <td width="414" class="td2">
                    <input style="WIDTH: 205px; FONT-WEIGHT: bold"  
      class="inp ipt-normal" maxlength="18"  type="text" name="name"onBlur="CheckName()">
                  
                </td>
                <td width="181" class=td3><DIV class=info-pop id=div_password_conf >
                  <DIV class=info-pop-c>
                    <DIV class=cont>真实姓名可包括英文或汉字！！<BR>
                    </DIV>
                  </DIV>
                </DIV></td>
              </tr>
              <tr id="tr_input_username">
                <td height="90" class="td1"> 联系电话：<span class="nes">*</span></td>
                <td valign="top" class="td2" style="FONT-SIZE: 14px"><span class="td2" style="FONT-SIZE: 14px">
                  <input  class="inp ipt-normal"    maxlength="16" type="text" 
      name="tel" onBlur="CheckTel()"/>
                </span></td>
                <td class=td3><DIV class=info-pop id=div_password_conf >
                  <DIV class=info-pop-c>
                    <DIV class=cont>联系方式只能包括数字或'-'！！<BR>
                      </DIV>
                    </DIV>
                </DIV></td>
              </tr>
              <tr>
                <td height="72" class=td1>电子邮箱：<span class=nes>*</span></td>
                <td class=td2><input  class="inp ipt-normal" maxlength="16" 
      type="text" name="email" onBlur="CheckEmail(this.value)"/></td>
                <td class="td3"><DIV class=info-pop id=div_password_conf >
                  <DIV class=info-pop-c>
                    <DIV class=cont>电子邮箱必须包含'@'和'.'！！<BR>
                      </DIV>
                    </DIV>
                </DIV></td>
              </tr>
              <tr>
                <td height="100" valign="top" class="td1">住宿：<span class=nes>*</span></td>
                <td valign="top" class="td2"><label>
                  <textarea  name="location"  cols="35" rows="5" onBlur="testinfo()"></textarea  >
                </label></td>
                <td>&nbsp;</td>
              </tr>
            </tbody>
          </table>
          
          
          <TABLE style="TABLE-LAYOUT: fixed" class=cont-tab cellSpacing=0 cellPadding=0>
            <TBODY>
              <TR>
                <TD class=td1>&nbsp;</TD>
                <TD class=td2><LABEL></LABEL></TD>
                <TD class=td3>&nbsp;</TD>
              </TR>
              <TR>
                <TD class="td1">&nbsp;</TD>
                <TD class="td2"><input name="submit"  type="image" src="images/submit.jpg"  title=创建帐号 ></TD>
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
  <A href="http://www.law-star.com/" target=_blank>相关法律</A>&nbsp;&nbsp;|&nbsp;&nbsp;版权所有&nbsp;&copy;&nbsp;1997-2009  </DIV>
</div>
</BODY>
</HTML>
