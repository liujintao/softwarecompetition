<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>注册新用户</TITLE>
<META content="text/html; charset=GBK" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="styles.css">
<script language="javascript" type="text/javascript">
<!--
function send()//检查表单是否填写完整 
{ 

           
 var objschoolname = document.form1.schoolname;  
 var objdepartment = document.form1.department;  

var objtel = document.form1.tel;  
var objmail = document.form1.email;   

var objattachname = document.form1.attachname;   



 
            if (objschoolname.value.length==0)
            {
                 
                objschoolname.focus();
                alert("请输入您的院校名！");
                return false; 

            }
			else if(objschoolname.value==0){
                 
                objschoolname.focus();
                alert("请输入您的院系名！");
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
            <LI><A href="../intro/academy.html" target="_parent">简介</A> </LI>
            <LI><A href="../infor/notice.jsp" "target="_parent">信息</A> </LI>
            <LI><A href="../service/cooperate.html" target="_parent">服务</A> </LI>
            <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A> </LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
  <DIV class="content">
    <div class="mhd">
      <H1>巡回报告会注册</H1>
    </div>
    <DIV class="mcont">
      <form  method="post" action="../report/train.do" name="form1" onSubmit="return send()">
        <DIV class="main-cont">
          <DIV class="main-cont-tit">
            <H2>创建您的帐号</H2>
          </DIV>
          <table style="TABLE-LAYOUT: fixed" class="cont-tab" cellpadding="0"  cellspacing="0">
            <!--DWLayoutTable-->
            <tbody>
              <tr >
                <td width="269" height="58" class="td1">院校名：<span class="nes">*</span></td>
                <td width="414" class="td2"><div class="fle">
                    <input style="WIDTH: 205px; FONT-WEIGHT: bold"  
      class="inp ipt-normal" maxlength="18"  type="text" name="schoolname">
                  </div> 
                  <% String error = (String) request.getAttribute("error");
        if (error != null) {
            out.println(error);
        }
                    %></td>
                <td width="181" class=td3>&nbsp;</td>
              </tr>
              <tr id="tr_input_username">
                <td height="90" class="td1"> 院系名：<span class="nes">*</span></td>
                <td valign="top" class="td2" style="FONT-SIZE: 14px"><input  class="inp ipt-normal"    maxlength="16" type="text" 
      name="department"></td>
                <td class=td3>&nbsp;</td>
              </tr>
              <tr>
                <td height="72" class=td1>联系人姓名：<span class=nes>*</span></td>
                <td class=td2><input  class="inp ipt-normal" maxlength="16" 
      type="text" name="attachname"></td>
                <td class="td3">&nbsp;</td>
              </tr>
              <tr>
                <td height="100" valign="top" class="td1">流程：</td>
                <td valign="top" class="td2"><label>
                  <textarea name="circuit" id="textarea" cols="35" rows="5"></textarea  >
                </label></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="100" valign="top" class="td1">时间安排：</td>
                <td valign="top" class="td2"><label>
                  <textarea name="schedule" cols="35" rows="5"></textarea  >
                </label></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="72" class=td1>团长姓名：<span class=nes>*</span></td>
                <td class=td2><input  class="inp ipt-normal" maxlength="16" 
      type="text" name="headname"></td>
                <td class="td3">&nbsp;</td>
              </tr>
              <tr>
                <td height="72" class=td1>联系电话：<span class=nes>*</span></td>
                <td class=td2><input  class="inp ipt-normal" maxlength="16" 
      type="text" name="tel"></td>
                <td class="td3">&nbsp;</td>
              </tr>
              <tr>
                <td height="72" class=td1>电子邮箱：<span class=nes>*</span></td>
                <td class=td2><input  class="inp ipt-normal" maxlength="16" 
      type="text" name="email"></td>
                <td class="td3">&nbsp;</td>
              </tr>
            </tbody>
          </table>
          
          <DIV class=main-cont-tit>
            <H2>服务条款</H2>
          </DIV>
          <TABLE style="TABLE-LAYOUT: fixed" class=cont-tab cellSpacing=0 cellPadding=0>
            <TBODY>
              <TR>
                <TD class=td1>&nbsp;</TD>
                <TD class=td2></TD>
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
