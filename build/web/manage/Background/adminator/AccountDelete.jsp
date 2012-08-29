<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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




 
            if (objname.value.length==0)
            {
                 
                objname.focus();
                alert("请输入您要删除的用户账号！");
                return false; 

            }


					}
					
			


//-->
</script>
</head>
<body style="background-color:#FFFFFF">
<div class="main-cont" style="width:auto;">
<form action="Deletesucceed.jsp" method="post" onSubmit="return send()">
    <div class="cont-info-rember">
      <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">请输入要删除账号的信息：</strong></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>用户账号：</th>
              <td><input class="ipt-normal" type="text" name="account">
                </td>
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
