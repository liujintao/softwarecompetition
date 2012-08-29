<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script language="javascript" type="text/javascript">
           var i = 5;
            var intervalid;
         intervalid = setInterval("fun()", 1000);
          function fun() {
               if (i == 0) {
                   window.location.href = "/websystem/index.jsp";
                  clearInterval(intervalid);
               }
              document.getElementById("mes").innerHTML = i;
            i--;
           }
       </script>
<style type="text/css">
<!--
body {
	background-color:#f7f9fd;
	margin:0px auto;
	text-align:center;
	font-size:12px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.content
{
Z-INDEX: 0; MARGIN: 100px auto; WIDTH: 995px; HEIGHT: auto;
}
#apDiv1 {
	position:relative;
	right:100px;
	top:28px;
	width:128px;
	height:128px;
	cursor:pointer;
}
a{
text-decoration:none;
border-width:0px;


}
-->
</style>
</head>

<body>
        <%
        session.invalidate();
        response.setHeader("Refresh", "5;url=/websystem/index.jsp");
        %>


        <div class="content">

        <div id="apDiv1"><img src="images/Alert Note.png" border="0" usemap="#Map" />
<map name="Map" id="Map">
  <area shape="rect" coords="0,3,128,127" href="../index.jsp" target="_parent" />
</map></div>

        <h2>您已经退出本系统!</h2>
         <p>将在 <span id="mes" style="color:#FF0000;">5</span> 秒钟后返回首页！</p>
         <p>如不能正常跳转请<a href="../index.jsp" target="_parent">点击此处</a>进入首页！！</p>
        </div>

</body>
</html>
