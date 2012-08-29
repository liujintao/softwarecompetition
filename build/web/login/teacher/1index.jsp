<%--
    Document   : 1index
    Created on : 2009-8-16, 8:40:11
    Author     : wei
--%>
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function chk()
{
       if  (document.form.deviceInf.value.length=="")
        {
        alert("请先选择要上传的文件!");
        return false;
        }
     if (document.form.name.value.length=="")
        {
        alert("请填写命题题目!");
        return false;
        }
        return true;
}
</script>
</head>
<body style="background-color:#fff;">
<div class="main-cont" style="width:auto; padding-top:100px;">
<form name="form" action="upload.jsp"  method="post" enctype="multipart/form-data" onsubmit="return chk()">
    <div class="cont-info-rember">
      <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">输入您要提交的命题，按浏览键上传命题规则</strong></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>命题名:</th>
              <td><input  class="ipt-normal"   name="name" value=""/></td>
            </tr>
            <tr>
              <th>评分细则：:</th>
              <td><input  class="ipt-normal"   type="file" name="deviceInf"/></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="mft" style="text-align:center; background-color:#FFF;">
      <input type="image" src="../images/submit_tit.jpg" />
       <input type="image" src="../images/clear.jpg"  onclick="javascript:document.form.reset(); return false;"/>
    </div>
  </form>
</div>
</body>

</html>
