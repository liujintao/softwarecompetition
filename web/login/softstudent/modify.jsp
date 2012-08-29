<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.EnglishStudent"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<jsp:useBean id="userinfo2" class="com.ytu.xiao.SoftStudent" scope="request">
       <jsp:setProperty property="*" name="userinfo2"/>
   </jsp:useBean>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
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
document.form1.Apassword.value='';

}
else if(!issame(document.form1.password.value,document.form1.Apassword.value))
{alert("两次密码输入不一致！")
document.form1.password.focus();
document.form1.password.value='';
document.form1.Apassword.value='';
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
alert("您的电话号码不合法！");
document.form1.tel.focus();
document.form1.tel.value='';
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
<script language="javascript">
<!--
function send()//检查表单是否填写完整 
{ 

            var obj = document.form1.oldpassword;   
var obj1 = document.form1.password;  
var objtel = document.form1.tel;  
var objmail = document.form1.email;   

var objjob = document.form1.job;   
var objtrain= document.form1.train;  
 var objmeeting= document.form1.meeting;  
 var objinfo= document.form1.info;  
  var objap= document.form1.Apassword;  



 
            if (obj.value.length==0)
            {
                 
                obj.focus();
                alert("请输入您旧密码！");
                return false; 

            }
else if(obj1.value==0){
                 
                obj1.focus();
                alert("请输入您的新密码！");
                return false; 

            }else if(objap.value==0){
                 
                objap.focus();
                alert("请确认您的新密码！");
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

            }
					else if(objtrain.value==0){
                 
                objtrain.focus();
                alert("请选择是否参加暑期夏令营！");
                return false; 

            }
			else if(objmeeting.value==0){
                 
                objmeeting.focus();
                alert("请选择是否参加巡回报告会！");
                return false; 

            }
			else if(objjob.value==0){
                 
                objjob.focus();
                alert("请填写您的工作！");
                return false; 

            }
				else if(objinfo.value==0){
                 
                objinfo.focus();
                alert("请填写您个人简介！");
                return false; 

            }
				
				
        
    
} 

//-->
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
<style type="text/css">
<!--
.info-pop{
position:absolute;
BORDER-RIGHT: #bebcb5 1px solid;  BORDER-TOP: #bebcb5 1px solid;  BORDER-LEFT: #bebcb5 1px solid; COLOR: #4a4a4a;  PADDING-TOP: 2px; BORDER-BOTTOM: #bebcb5 1px solid; FONT-FAMILY: simsun; BACKGROUND-COLOR: #fffef6;font-size:12px;
font-family:Verdana, Arial, Helvetica, sans-serif
}
-->
</style>
</head>
<body style="background-color:#fff;">
<div class="main-cont" style="width:100%;">
 <form action="modifysuccess.jsp" name="form1" onsubmit="return send()">
   <div class="cont-info-rember">
    <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">修改您的的个人信息：</strong></div>
    <div class="finish-area">

        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>旧密码：</th>
              <td><input  class="ipt-normal" name="oldpassword"  type="password"/></td>
            </tr>
            <tr>
              <th>新密码：</th>
              <td><input class="ipt-normal" name="password" type="password"/><DIV class=info-pop >
                    
                      ·6～16个字符（字母、数字、特殊符号）,区分大小写
                      
                    
                  </DIV></td>
            </tr>
            <tr>
              <th>确认新密码：</th>
              <td><input class="ipt-normal" name="Apassword"  type="password" onblur="CheckPass()"/></td>
            </tr>
            <tr>
              <th>联系电话：</th>
              <td><input class="ipt-normal"  type="text" name="tel" onBlur="CheckTel()"/></td>
            </tr>
            <tr>
              <th>电子邮箱：</th>
              <td><input class="ipt-normal" type="text" name="email" onBlur="CheckEmail(this.value)"></td>
            </tr>
            <tr>
              <th>是否参加暑期训练营：</th>
              <td><select style="width:100px;"name="train">                  <option style="color:#000000"  value="0"> 请选择</option>

                  <option style="color:#000000" value="Y"> 是</option>
                  <option style="color:#000000" value="N"> 否</option>
                </select>
                </td>
            </tr>
            <tr>
              <th>是否参加巡回报告会：</th>
              <td><select  style="width:100px; style="width:auto" name="meeting">
                                   <option style="color:#000000"  value="0"> 请选择</option>
 <option style="color:#000000" value="Y"> 是</option>
                  <option style="color:#000000" value="N"> 否</option>
                </select></td>
            </tr>
            <tr>
              <th>工作：</th>
              <td><input class="ipt-normal" type="text" name="job" /></td>
            </tr>
            <tr>
              <th>个人简介：</th>
              <td><textarea  name="info" onBlur="testinfo()">

                      </textarea></td>
            </tr>
          </tbody>
        </table>

    </div>
  </div>
<div class="mft" style="text-align:center; background-color:#FFF; margin-top:40px;">
  <input type="image" src="../images/submit-finish.gif" />
</div>
 </form>
</div>
</body>
</html>
