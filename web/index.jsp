<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>资讯 - 济南计算机学会 - Powered by DreamForce</title>
<link href="index/styles.css" rel="stylesheet" type="text/css" />
<script src="index/Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<style type="text/css">
<!--
.STYLE1 {
	COLOR: #737373;
	font-size: 14px;
}
.STYLE2 {
	font-size: 24px;
	color: #575757;
	font-family: "黑体";
}
.STYLE3 {
	COLOR: #575757;
}
.STYLE4 {
	COLOR: #737373;
	font-size: 12px;
}

-->
</style>
<script language="javascript">
<!--
function send()//检查表单是否填写完整 
{ 

            var obj = document.form_login.account;   
var obj1 = document.form_login.type;  
var obj2 = document.form_login.password;   
            if (obj.value.length==0)
            {
                 
                obj.focus();
                alert("请输您的用户名和密码！");
                return false; 

            }
else if(obj1.value==0){
                 
                obj.focus();
                alert("请选择用户类型！");
                return false; 

            }
else if(obj2.value==0){
                 
                obj.focus();
                alert("请输入您的密码！");
                return false; 

            }
        
    
} 

//-->
</script>
</head>
<body>
<div id="wrapper">
  <table width="995" border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <TD height="99" width="410" background="index/images/topback.jpg"><img src="index/images/logotitle.jpg"/></TD>
        <TD width="150" background="index/images/topback.jpg" >&nbsp;</TD>
        <TD background="index/images/topback.jpg"><UL class=nav>
            <LI class=navCurrent> <A href="index.jsp" target="_parent">首页</A> </LI>
            <LI><A href="intro/introFrame.html" target="_blank">简介</A> </LI>
            <LI><A href="infor/notice.jsp" target="_parent">信息</A> </LI>
            <LI><A href="service/cooperate.html" target="_parent">服务</A> </LI>
            <LI><A href="http://127.0.0.1/upload/index.php" target="_blank" >论坛</A> </LI>
          </UL></TD>
      </tr>
    </tbody>
  </table>
  <table width="995" border="0" cellpadding="0" cellspacing="0">
    <tbody>
      <tr>
        <td width="995" height="245"><script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0','width','995','height','381','src','index/flash/myblock','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','index/flash/myblock' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="995" height="381">
            <param name="movie" value="index/flash/myblock.swf">
            <param name="quality" value="high">
            <embed src="index/flash/myblock.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="995" height="381"></embed>
          </object></noscript></td>
      </tr>
    </tbody>
  </table>
  <table width="995" height="228" border="0" cellpadding="0" cellspacing="0">
    <!--DWLayoutTable-->
    <tbody>
      <tr>
        <td  width="198" height="298" ><table width="100%"  height="298" border="0" cellpadding="0" cellspacing="0" background="index/images/loginback.jpg">
            <!--DWLayoutTable-->
            <form name="form_login" method="post" id="form1" action="login.do" onSubmit="return send()">
              <tr>
                <td height="35" colspan="2" valign="top"><img src="index/images/top1.jpg"/></td>
              </tr>
              <tr>
                <td height="20" colspan="2" align="center" valign="top" ><img src="index/images/login.gif" width="17" height="16" /> 用户登陆</td>
                <td></td>
              </tr>
              <tr>
                <td width="86" height="24" align="right" valign="middle"  ><span class="STYLE4">用户名：</span></td>
                <td width="112" align="left" valign="middle" ><input  type="text" class="panel-login" id=username maxlength="20"  name="account"  /></td>
                <td></td>
              </tr>
              <tr>
                <td height="24" align="right" valign="middle"><span class="STYLE4">用户类型：</span></td>
                <td valign="middle" ><label>
                  <select style="width:85px; height:22px; font-size:14px;" name="type"  class="panel-login" id="uers_select">
                    <option style="color:#666" value="0">用户身份</option>
                    <option value="teacher1">命题教师</option>
                    <option value="teacher2">指导教师</option>
                    <option value="softstudent">软件选手</option>
                    <option value="englishstudent">外语选手</option>
                  </select>
                  </label></td>
                <td></td>
              </tr>
              <tr>
                <td height="1" ></td>
                <td rowspan="2" align="left" valign="middle" ><input name="password" type="password" class="panel-login" id="password" size="12" /></td>
                <td></td>
              </tr>
              <tr>
                <td rowspan="2" align="right" valign="top" ><span class="STYLE4">密码：</span></td>
                <td height="23"></td>
              </tr>
              <tr>
                <td height="1" ></td>
                <td></td>
              </tr>
              <tr>
                <td height="34" colspan="2" valign="top" >　
                  <input type="image"  src="index/images/login.jpg" name="login"  />
                  <img   src="index/images/register.jpg" border="0" usemap="#Map" /></td>
                <td></td>
              </tr>
              <tr>
                <td height="45" >&nbsp;</td>
              </tr>
            </form>
            <tr>
              <td height="43" colspan="2" valign="top" ><img src="index/images/loginleft.jpg" width="198" height="43" /></td>
              <td></td>
            </tr>
            <tr>
              <td height="48" colspan="2" valign="top"><img src="index/images/loginleft2.jpg" width="198" height="48" /></td>
            </tr>
        </table></td>
        <td  valign="top"><table border="0" cellpadding="0" cellspacing="0">
            <!--DWLayoutTable-->
            <tbody>
              <tr>
                <td width="87" height="29" valign="top"><img src="index/images/sevice_title.jpg"/></td>
                <td width="797" align="RIGHT" background="index/images/tit_back.jpg"><img src="index/images/tit_back_b.jpg"/></td>
              </tr>
              <tr>
                <td height="199" colspan="2" valign="top"><table width="90%" height="268" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="199" height="268" valign="top"><img src="index/images/replace/2.jpg" width="199" height="265" border="0" usemap="#Map2" /> </td>
                      <td width="199" valign="top"><img src="index/images/replace/1.jpg" width="199" height="268" border="0" usemap="#Map3" /></td>
                      <td width="199" valign="top"><img src="index/images/replace/3.jpg" width="199" height="267" border="0" usemap="#Map4" /></td>
                      <td  width="197" valign="top"><img src="index/images/replace/4.jpg" width="197" height="266" border="0" usemap="#Map5" /></td>
                    </tr>
                  </table></td>
              </tr>
            </tbody>
          </table></td>
      </tr>
    </tbody>
  </table>
  <table width="995" height="200" cellpadding="0" cellspacing="0">
    <!--DWLayoutTable-->
    <tr>
      <td width="198"  valign="top"><table width="199" height="auto" border="0" cellpadding="0" cellspacing="0" background="index/images/loginback2.jpg" >
          <!--DWLayoutTable-->
          <tr>
            <td width="108" height="49" valign="bottom"><p style="font-size:28px;padding-left:45px; font-weight:bold; color:#0099ff">公告</p></td>
          </tr>
          <tr>
            <td height="142" colspan="2" valign="top" class=panel-content ><img src="index/images/replace/b1.jpg" width="164" height="175">
              <marquee behavior="scroll" scrollLeft=0  onmouseover=this.stop() onmouseout=this.start() scrollAmount=2 direction=up width=150 height=80 >
              <p class="STYLE1"><a href="#" >softqilu.com全新改版</a></p>
              <p class="STYLE1"><a href="#">2009年大赛报名开始！</a></p>
              <p class="STYLE1"><a href="#">第17届比赛题目新鲜出炉</a></p>
              <p class="STYLE1"><a href="#">巡回报告团受到各高校欢迎</a></p>
              </marquee></td>
          </tr>
          <tr >
            <td height="100px"></td>
          </tr>
          <tr>
            <td height="215" colspan="2" valign="top" align="center" ><p style="font-size:28px;padding-left:25px; font-weight:bold; color:#0099ff">精彩花絮</p>
              <marquee behavior="scroll" scrollLeft=0  onmouseover=this.stop() onmouseout=this.start() scrollAmount=2 direction=up width=150 height=150px >
              <img src="index/images/replace/a.jpg" width=193px> <br>
              <img src="index/images/replace/b.jpg" width="192px"> <br>
              <img src="index/images/replace/c.jpg" width="192px"><br>
              <h1></h1>
              </marquee>
            </td>
          </tr>
        </table></td>
      <td width="797" valign="top"><table width="100%" height="400" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="812" height="30" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                <!--DWLayoutTable-->
                <tr>
                  <td width="87" height="29" valign="top"><img src="index/images/news_title.jpg" width="87" height="30" /></td>
                  <td width="732" background="index/images/tit_back1.jpg" align="right"><img src="index/images/tit_back1_b.jpg"  /></td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td height="148" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                <!--DWLayoutTable-->
                <tr>
                  <td width="795" bgColor=#ffffff height="145" ><p class="textnews"> <a href="intro/introFrame.html"><SPAN class=textnews_tit>学会简介＞＞</SPAN></a><SPAN class=STYLE3><BR>
                  　　济南计算机学会前身是济南微电脑应用协会。它创建于1984年4月。成立大会在市科协礼堂举行。北京、江苏等地微电脑协会发来了贺电。当时，正处于计算机普及高潮，托夫勒的“第三次浪潮”一书在国内出版。此书对国内影响很大。书上说，信息时代，使发达国家与发展中国家走到了同一起跑线上。计算机技术及应用将会改变社会的各个方面。因此，人们普遍渴求这方面的知识。当时，协会在市科协领导……<a  style="font-size:12px" href="intro/introFrame.html"> ＜查看详情＞</a></SPAN></p></td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td height="148" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="795" height="145" bgColor=#ffffff><P class=textnews><a href="infor/notice.jsp"><SPAN class=textnews_tit>信息＞＞ </SPAN></a><SPAN class=STYLE3><BR>
                      <SPAN 
            class=STYLE3>　　公告、参赛作品、参赛院校、参赛信息……<a  style="font-size:12px" href="infor/notice.jsp"> ＜查看详情＞</a></SPAN></SPAN></P></td>
                </tr>
              </table></td>
          </tr>
         <tr>
            <td height="148" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                <!--DWLayoutTable-->
                <tr>
                  <td width="795" bgColor=#ffffff height="145" ><p class="textnews"> <a href="service/cooperate.html"><SPAN class=textnews_tit>服务＞＞</SPAN></a><SPAN class=STYLE3><BR>
                  　　校企合作、认证培训、教学经验、活动服务、巡回报告会、就业信息……<a  style="font-size:12px" href="service/cooperate.html">＜查看详情＞</a>  </SPAN></p></td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td height="148" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="795" height="145" bgColor=#ffffff><P class=textnews><a href="http://127.0.0.1/upload/index.php"><SPAN class=textnews_tit>论坛＞＞ </SPAN></a><SPAN class=STYLE7><BR>
                      <SPAN 
            class=STYLE3>　论坛全新改版<a  style="font-size:12px"href="http://127.0.0.1/upload/index.php">……&lt;&lt;进入论坛&gt;&gt;</a></SPAN></SPAN></P></td>
                </tr>
              </table></td>
          </tr>
        </table></td>
    </tr>
  </table>
  <div id="footer">
  <table width="995" height="59" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
    <tr>
      <td align="center"><span class="STYLE4">Copyright 2008-2009 济南计算机学会.All Rights Reserved<br />
        烟台大学DreamForce小组维护<a href="manage/admin.jsp">管理</a><br />
        联系电话：(0)15553421470 (0)15854558167 <br />
        大赛邮箱：qldxs@163.com </span></td>
    </tr>
  </table>
  </div>
</div>
<map name="Map">
  <area shape="rect" coords="0,0,71,20" href="register/register.jsp">
</map>
<map name="Map2">
  <area shape="rect" coords="-1,2,198,265" href="intro/introFrame.html" target="_parent">
</map>
<map name="Map3">
  <area shape="rect" coords="2,0,194,259" href="infor/notice.jsp" target="_parent">
</map>
<map name="Map4">
  <area shape="rect" coords="1,1,197,264" href="service/cooperate.html" target="_parent">
</map>
<map name="Map5">
  <area shape="rect" coords="1,2,194,264" href="#">
</map>
</body>
</html>
