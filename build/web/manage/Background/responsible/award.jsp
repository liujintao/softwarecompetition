<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ޱ</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#fff;">
<div class="main-cont" style="width:auto; padding-top:50px;">
<form action="getaward.jsp" method="post">
    <div class="cont-info-rember">
      <div class="hd"><span  class="Cred" style="font-size:14px; color:#0099ff;">选择您要查看的获奖信息</span></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th><input type="radio" name="type" value="englishstudent" checked>外语大赛
            <input type="radio" name="type" value="team"> 软件大赛</th>
              <td><select name="award">
            <option  style="color:#000000" value="一">一等奖 </option>
             <option style="color:#000000" value="二">二等奖 </option>
             <option style="color:#000000" value="三">三等奖 </option>
            </select></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <div class="mft" style="text-align:center; background-color:#FFF;">
      <input type="image" src="../images/submit-finish.gif" />
    </div>
  </form>
</div>
</body>
</html>
