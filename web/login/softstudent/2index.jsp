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
<script language="javascript" type="text/javascript">
function chk()
{
 if  (document.form.deviceInf.value.length=="")
        {
        alert("请选择您要上传的文件!");
        return false;
        }
        return true;
}
</script>
</head>
<body style="background-color:#fff;">
<div class="main-cont" style="width:auto; padding-top:100px;">
<form name="form" action="2upload.jsp"  method="post" enctype="multipart/form-data" onsubmit="return chk()">
    <div class="cont-info-rember">
      <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">请把系统文档、系统源码、安装文件打包压缩成rar文件后再上传</strong></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
                        <tr>
              <th>文件：</th>
              <td><input  class="ipt-normal"   type="file" name="deviceInf"/></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="mft" style="text-align:center; background-color:#FFF;">
      <input type="image" src="../images/submit_tit.jpg" />
      <span class="mft" style="text-align:center; background-color:#FFF;">
      <input type="image" src="../images/clear.jpg" onclick="javascript:document.form.reset(); return false;"/>
    </span></div>
  </form>
</div>
</body>

</html>
