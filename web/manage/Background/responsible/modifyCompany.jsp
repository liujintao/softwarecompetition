<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ޱĵ</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#fff;">
 <% String comid=(String)(request.getParameter("comid"));
        session.setAttribute("comid", comid);   %>
<div class="main-cont" style="width:auto; padding-top:50px;">
        <form action="modifycomsucced.jsp" method="get">
    <div class="cont-info-rember">
      <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">修改赞助公司信息</strong></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>请输入公司名称：</th>
              <td><input  class="ipt-normal" type="text" name="comname"/></td>
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
