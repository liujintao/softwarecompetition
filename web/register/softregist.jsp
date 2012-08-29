<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>注册新用户</TITLE>
<META content="text/html; charset=UTF-8" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="style.css">
<script language="javascript">
<!--
function send()//检查表单是否填写完整 
{ 

            var objob = document.form1.account;   
var objtype = document.form1.type; 



 
            if (objob.value.length==0)
            {
                 
                objob.focus();
                alert("请输入您的工作！");
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

            }else if(objteamname.value==0){
                 
                objteamname.focus();
                alert("请输入您的队伍名字！");
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
            <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A> </LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
  <DIV class="content">
    <div class="mhd">
      <H1>用户注册</H1>
    </div>
    <DIV class="mcont">
      <FORM method="post" action="softconfig.do" name="form1">
        <DIV class="main-cont">
          <div class="main-cont-tit">
            <h2>进行下一步设置</h2>
            （登陆之后您可以随时更改这些信息） </div>
          <table style="TABLE-LAYOUT: fixed" class="cont-tab" cellpadding="0"  cellspacing="0">
            <!--DWLayoutTable-->
            <tbody>
              <tr >
                <td width="365" class="td1">是否参加假期训练营：</td>
                <td width="332" height="42" valign="top" class=td2 style="FONT-SIZE: 14px"><label for=rd1>
                  <input id=rd1
       type=radio checked name="train" value="Y" >
                  是 </label>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <label for=rd2>
                  <input id=rd2
  type=radio  name="train" value="N">
                  否 </label></td>
                <td width="143" class=td3>&nbsp;</td>
              </tr>
              <tr id="tr_input_username">
                <td height="52" valign="top" class="td1">是否参加颁奖典礼：</td>
                <td valign="top" class="td2" style="FONT-SIZE: 14px"><label for=rd1>
                  <input id=rd1
      name="meeting" value="Y" type=radio checked >
                  是</label>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <label for=rd2>
                  <input id=rd2
 name="meeting" value="N" type=radio >
                  否</label></td>
                <td class=td3>&nbsp;</td>
              </tr>
              <tr>
                <td height="72" class=td1>队伍中的职责：</td>
                <td class=td2><input  class="inp ipt-normal"
      type="text" name="job"></td>
                <td class="td3">&nbsp;</td>
              </tr>
              <tr>
                <td height="72" class="td1">队伍名称：<span class=nes>*</span></td>
                <td class="td2"><input  class="inp ipt-normal"   type="text"
      name="teamname">
                </td>
                <td class="td3">&nbsp;</td>
              </tr>
            </tbody>
          </table>
          <TABLE style="TABLE-LAYOUT: fixed" class=cont-tab cellSpacing=0 cellPadding=0>
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
