<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#fff;">
<div class="main-cont" style="width:auto; padding-top:50px;">
       <form action="getfee.jsp" method="get">
    <div class="cont-info-rember">
      <div class="hd"><span  class="Cred" style="font-size:14px; color:#0099ff;">选择您要查看的缴费信息</span></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
                <th><input type="radio" name="type" value="teamfee" checked/>软件缴费情况
            <input type="radio" name="type" value="englishstudentfee"/> 外语缴费情况</th>
              
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="mft" style="text-align:center; background-color:#FFF;"><span class="mft" style="text-align:center; background-color:#FFF;">
      <input type="image" src="../images/submit-finish.gif" />
    </span></div>
  </form>
</div>
</body>
</html>
