<%--
    Document   : 1index
    Created on : 2009-8-16, 8:40:11
    Author     : xiao
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.ytu.xiao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#fff;">
<div class="main-cont" style="width:auto; padding-top:100px;">
  <form method="get" action="getscore.jsp" >
  <div class="cont-info-rember">
    <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">޸请选择您要查看的选手类型，按提交键查看</strong></div>
    <div class="finish-area">
      <table border="0" cellspacing="0" cellpadding="0">
        <tbody>
          <tr>
              <th><input type="radio" value="team" name="scoretype"  checked>
              软件团队</th>
            <td  align="left" style="font-weight:normal"><input type="radio" value="englishstudent" name="scoretype">
              外语选手</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
  <div class="mft" style="text-align:center; background-color:#FFF;">
    <input type="image" src="../../../login/images/submit_tit.jpg" />
  </div>
  <div class="finish-area">
    
  </div>
  <div class="cont-info-rember">
  <div class="hd">
</div>
</div>
</div>
</form>
</div>
</body>
</html>
