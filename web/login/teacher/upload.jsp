<%--
    Document   : upload
    Created on : 2009-8-16, 8:41:27
    Author     : wei
--%>

<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*"
    import="java.sql.*,java.io.*,com.jspsmart.upload.*" import="com.ytu.xiao.*,java.util.*"%>
 <html>
 <head>
  <title>文件上传</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 </head>
 <body>
 <% User teacheruser=(User)session.getAttribute("user");
  SmartUpload mySmartUpload =new SmartUpload();
  String deviceId=mySmartUpload.getRequest().getParameter("deviceInf");
     // 初始化
    final String upFileType="txt|TXT|doc|DOC|rar|RAR|zip|ZIP|pdf|PDF";     //上传文件类型
	final int MAXFILESIZE=100*1024*1024;        //上传文件大小限制100m
	String errMsg=null;    //错误信息
	boolean err=false;     //错误标志
	int fileSize=0;        //文件大小
	String url="upload/";      //应保证在根目录中有此目录的存在
	String fileType ="";
	String normalPicName = deviceId+"n";
	String alarmPicName  = deviceId+"a";
	mySmartUpload.initialize(pageContext);
	// 上传文件
	mySmartUpload.upload();
    String teacherid=Integer.toString( teacheruser.getId());
	//String teacherid=mySmartUpload.getRequest().getParameter("teacherid");
    String name=mySmartUpload.getRequest().getParameter("name");
	url=url+teacherid+"/";
    java.io.File fp1=new java.io.File(request.getRealPath("/")+url);
	fp1.mkdir();
	//判断将要上传文件的总容量是否超过上限
    int size = mySmartUpload.getSize();
	if(size >MAXFILESIZE){
	out.print ("<script>alert('上传失败！文件大小:"+size /(1024*1024)+"m超出了限定的范围(最大"+ MAXFILESIZE/(1024*1024)+"m)');this.history.go(-1);</script>");
	}

	// 循环取得上传所有文件
	else{
	    for(int i=0;i<mySmartUpload.getFiles().getCount();i++){
	          com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(i);
            //若选择了文件
	        if (!myFile.isMissing()) {
	        String filename=myFile.getFileName();//得到文件名
	        fileType=myFile.getFileExt();//得到文件扩展名
	           fileType=fileType.toLowerCase();   //将扩展名转换成小写
	        if (upFileType.indexOf(fileType)==-1){
	        err=true;
	        errMsg="文件"+filename+"上传失败！只允许上传以下格式的文件："+upFileType;
	        }
	     if(err==false){
	  if(i<=0){
	      normalPicName=filename;
	      String saveurl=request.getRealPath("/")+url;
	      saveurl+=normalPicName;          //保存路径
	      myFile.saveAs(saveurl,mySmartUpload.SAVE_PHYSICAL);
	  }
	  else{
	   alarmPicName=filename;
	   String saveurl=request.getRealPath("/")+url;
	      saveurl+=alarmPicName;          //保存路径
	      myFile.saveAs(saveurl,mySmartUpload.SAVE_PHYSICAL);
	  }
	    Class.forName("org.gjt.mm.mysql.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");
	   Statement stmt=conn.createStatement();
	   stmt.executeUpdate("insert into title values(null,'"+name+"','"+size+"','N','"+teacherid+"','"+filename+"');");
	    }
	  else{
	        out.print ("<script>alert('"+errMsg+"');this.history.go(-1);</script>");
	}
	}
	}
	}
    session.setAttribute("teacherid",teacherid);
	out.println("<center><font size=2 color=blue >正在处理信息，请稍后........</font></center><meta http-equiv='refresh' content='2;url=indexdown.jsp '>");
    %>
 </body>
 </html>