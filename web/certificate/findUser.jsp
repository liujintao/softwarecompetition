<%@page contentType="text/html;charset=UTF-8" %>
<%@page pageEncoding="UTF-8"%>
<html:html locale="true">
<head>
<html:base/>
<title>证书查询系统</title>
<link href="style.css" rel="stylesheet" type="text/css" />

</head>
<body>
<DIV class="content">
  <DIV class=mcont>
      <!-- 分拆补充资料部分 Start -->
      <DIV class="main-cont">
      <form action="findUser.do"  method="post">
        <DIV class=cont-info>
          <H1>证书查询系统</H1>
          <DIV class=cont-info-rember>
            <DIV class=finish-area>
              <TABLE border=0 cellSpacing=0 cellPadding=0>
                <TBODY>
                  <TR>
                    <TH class="td1">CID：</TH>
                    <TD  class="td2"><input class="ipt-normal"  name="user.cid" type="text" /></TD>
                  </TR>
                </TBODY>
              </TABLE>
              <div style="text-align:center;">
                <input type="image"  src="images/submit-finish.gif" />
              </div>
            </DIV>
          </DIV>
          <DIV style="text-align:center;"></DIV>
        </DIV>
        </form>
    </DIV>
  </DIV>
</DIV>

</body>
</html>