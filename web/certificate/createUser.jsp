<%@page contentType="text/html;charset=UTF-8" %>
<%@page pageEncoding="UTF-8"%>

<html:html locale="true">
<head>
<html:base/>
<title>领取证书</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <DIV class="content">
  <DIV class=mcont>
      
      <DIV class="main-cont">
      <form action="createUser.do"  method="get">
        <DIV class=cont-info>
          <h1>证书</h1>
          <DIV class=cont-info-rember>
            <DIV class=finish-area>
              <TABLE border=0 cellSpacing=0 cellPadding=0>
                <TBODY>
                  <TR>
                    <TH class="td1">ID:</TH>
                    <TD  class="td2"><input class="ipt-normal"  name="user.softid" type="text" /></TD>
                  </TR>
                </TBODY>
              </TABLE>
              <div style="text-align:center;">
                <input type="image" src="images/submit.jpg" />
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
