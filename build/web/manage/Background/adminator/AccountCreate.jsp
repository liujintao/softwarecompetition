<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<jsp:useBean id="worker" scope="request" class="com.ytu.xiao.Worker">
<jsp:setProperty name="worker" property="*"/>
</jsp:useBean>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
<!--
function send()//检查表单是否填写完整 
{ 

           
 var objname = document.form1.name;  

var objaccount = document.form1.account;  
var objpassword = document.form1.password;   

var objtype = document.form1.type;   



 
            if (objname.value.length==0)
            {
                 
                objname.focus();
                alert("请输入您创建的用户姓名！");
                return false; 

            }
else if(objaccount.value==0){
                 
                objaccount.focus();
                alert("请输入您创建的账号！");
                return false; 

            }
			else if(objpassword.value==0){
                 
                objtype.focus();
                alert("请输入您创建的账号密码！");
                return false; 

            }
else if(objtype.value==0){
                 
                objtype.focus();
                alert("请选择账号类型！");
                return false; 

            }
			
			var Str=document.form1.password.value;
if(Str.length>16||Str.length<6)
{
alert("密码长度不在有效字符限制内，请重新输入!");
document.form1.password.focus();
document.form1.password.value='';
return false; 

}
	
	var Str1=document.form1.account.value;
if(Str1.length>16||Str.length<5)
{
alert("用户名不在有效字符(5-16)限制内，请重新输入!");
document.form1.account.focus();
document.form1.account.value='';
return false; 
}				
					}
					
			


//-->
</script>
</head>
<body style="background-color:#FFFFFF">
<div class="main-cont" style="width:auto; margin-top:50px;">
  <form action="Createsucceed.jsp" method="post" name="form1" onSubmit="return send()">
    <div class="cont-info-rember">
      <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">创建账户的信息：</strong></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>姓名：</th>
              <td><input class="ipt-normal" type="text" name="name"></td>
            </tr>
            <tr>
              <th>账号：</th>
              <td><input class="ipt-normal" type="text" name="account">
                <%
                            String error=(String)(request.getAttribute("accounterror"));
                            if(error!=null){
                            %>
                <%=error %>
                <% }%></td>
            </tr>
            <tr>
              <th>密码：</th>
              <td><input class="ipt-normal" type="password" name="password"/></td>
            </tr>
            <tr>
              <th>类型：</th>
              <td><select name="type">
                  <option value="0" >请选择账号类型</option>
                  <option value="editor" style="color:#000000">编辑</option>
                  <option value="examine" style="color:#000000">评审专家</option>
                  <option value="jobseeker" style="color:#000000">就业推荐人员</option>
                  <option value="responsible" style="color:#000000">大赛负责人</option>
                </select></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="mft" style="text-align:center; background-color:#FFF; margin-top:40px;"><span class="mft" style="text-align:center; background-color:#FFF; margin-top:40px;">
      <input type="image" src="../images/submit-finish.gif" />
      </span></div>
  </form>
</div>
</body>
</html>
