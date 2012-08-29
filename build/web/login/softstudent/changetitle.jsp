<%@page contentType="text/html" pageEncoding="UTF-8" import="com.ytu.xiao.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../styles.css" rel="stylesheet" type="text/css" />
 <script language="javascript" type="text/javascript">
           var i = 5;
            var intervalid;
         intervalid = setInterval("fun()", 1000);
          function fun() {
               if (i == 0) {
                   window.location.href = "teaminfo.jsp";
                  clearInterval(intervalid);
               }
              document.getElementById("mes").innerHTML = i;
            i--;
           }
       </script>
</head>

<body style="background-color:#fff;">
 <%  UserConnection gettitle=new UserConnection();
        if((String)(request.getParameter("titleid"))==null){
       Vector v=gettitle.gettitle();
       %>
       <div class="main-cont" style="width:auto; padding-top:50px;">
       <form action="changetitle.jsp">
    <div class="cont-info-rember">
      <div class="hd"><strong  class="Cred" style="font-size:14px; color:#0099ff;">޸选择要修改的命题，按确认键提交</strong></div>
      <div class="finish-area">
        <table border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <th>请选择要修改的命题:</th>
              <td><select  class="ipt-normal"  name="titleid"/><% Enumeration e=v.elements();
            while(e.hasMoreElements()){
             Object   obj[]=(Object[])e.nextElement();
              %>

              <option value=<%=(Integer)obj[0] %>><%=(String)obj[1]%>  </option>
              <%  } %>
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
<% } else {
                   int userid = ((User) session.getAttribute("user")).getId();
          if( gettitle.setTitle(Integer.parseInt(request.getParameter("titleid")), gettitle.getTeamId(userid))==1){

                    %>
    <p style="color:#0033FF; font-size:18px; text-align:center; margin:200px " >提交成功，系统将在
<span id="mes" style="color:#FF0000;">5</span> 秒钟后自动返回团队信息!</p>
   <%    response.setHeader("Refresh", "5;url=/websystem/login/softstudent/teaminfo.jsp");  %>

 <% } else


    {%>
  <h1 style="color:#bebebe;">选择错误</h1>
           <%=Integer.parseInt(request.getParameter("titleid"))%>

  <%  }}%>
</div>
</body>

</html>
