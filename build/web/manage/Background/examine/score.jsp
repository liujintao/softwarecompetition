<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<jsp:useBean id="getscore" scope="request" class="com.ytu.xiao.ScoreBean" >
<jsp:setProperty name="getscore" property="*"/>
</jsp:useBean>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#FFFFFF">

<div class="main-cont" style="background-color:#FFFFFF">
       <form action="scoresucceed.jsp" method="post">
   <div class="cont-info-rember">
    <div class="hd">
    <strong  class="Cred" style="font-size:14px;">请输入您要评审的信息：</strong></div>
    <div class="finish-area">
     
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>类型：</th>
              <td><input type="radio"   name="type" value="team" checked>软件
                   <input type="radio" name="type" value="englishstudent">外语</td>
            </tr>
            <tr>
              <th>选手ID：</th>
              <td><input class="ipt-normal" type="text" name="id"/></td>
            </tr>
            <tr>
              <th>分数：</th>
              <td><input class="ipt-normal" type="text" name="score"/></td>
            </tr>
            <tr>
              <th>审批老师：</th>
              <td><input class="ipt-normal"  type="text" name="tname"/></td>
            </tr>
            <tr>
              <th>软件审评：</th>
              <td><input type="checkbox" name="first" value="Y">一审
                            <input type="checkbox" name="second" value="Y">二审
                            <input type="checkbox" name="third" value="Y">三审</td>
            </tr>
            <tr>
              <th>评审意见：</th>
              <td> <textarea name="suggestion">

                            </textarea></td>
            </tr>
            <tr>
              <th>是否匿名：</th>
              <td><select  style="width:100px" name="anonymous">
                  <option   style="color:#000000"  value="yes"> 是</option>
                  <option  style="color:#000000" value="no"> 否</option>
                </select></td>
            </tr>
          </tbody>
        </table>
     
    </div>
  </div>
<div class="mft" style="text-align:center; background-color:#FFF; margin-top:40px;">
  <input type="image" src="../images/submit-finish.gif" />
</div>
 </form>
</div>
</body>
</html>
