
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*"
    import="java.sql.*,java.io.*,com.jspsmart.upload.*" import="com.ytu.xiao.*,java.util.*"%>
     <jsp:useBean id="user" class="com.ytu.xiao.UserConnection" scope="page"></jsp:useBean>
<html>
 <head>
  <title>�ļ��ϴ�</title>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 </head>
 <body>
  <% User auser=(User)session.getAttribute("user");
  SmartUpload mySmartUpload =new SmartUpload();
  String deviceId=mySmartUpload.getRequest().getParameter("deviceInf");
     // ��ʼ��
    final String upFileType="rar";     //�ϴ��ļ�����
	final int MAXFILESIZE=500*1024*1024;        //�ϴ��ļ���С����500m
	String errMsg=null;    //������Ϣ
	boolean err=false;     //�����־
	int fileSize=0;        //�ļ���С
	String url="teamupload1/";      //Ӧ��֤�ڸ�Ŀ¼���д�Ŀ¼�Ĵ���
	String fileType ="";
	String normalPicName = deviceId+"n";
	String alarmPicName  = deviceId+"a";
	mySmartUpload.initialize(pageContext);
	// �ϴ��ļ�
	mySmartUpload.upload();
    int softid=auser.getId();
    String teamid=Integer.toString(user.getTeamId(softid));
	url=url+teamid+"/";
    java.io.File fp1=new java.io.File(request.getRealPath("/")+url);
	fp1.mkdir();
	//�жϽ�Ҫ�ϴ��ļ����������Ƿ񳬹�����
    int size = mySmartUpload.getSize();
	if(size >MAXFILESIZE){
	out.print ("<script>alert('�ϴ�ʧ�ܣ��ļ���С:"+size /(1024*1024)+"m�������޶��ķ�Χ(���"+ MAXFILESIZE/(1024*1024)+"m)');this.history.go(-1);</script>");
	}

	// ѭ��ȡ���ϴ������ļ�
	else{
	    for(int i=0;i<mySmartUpload.getFiles().getCount();i++){
	          com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(i);
            //��ѡ�����ļ�
	        if (!myFile.isMissing()) {
	        String filename=myFile.getFileName();//�õ��ļ���
	        fileType=myFile.getFileExt();//�õ��ļ���չ��
	           fileType=fileType.toLowerCase();   //����չ��ת����Сд
	        if (upFileType.indexOf(fileType)==-1){
	        err=true;
	        errMsg="�ļ�"+filename+"�ϴ�ʧ��! ���ϵͳ�ĵ���ϵͳԴ�롢��װ�ļ���������ϴ�";
	        }
	     if(err==false){
	  if(i<=0){
	      normalPicName=filename;
	      String saveurl=request.getRealPath("/")+url;
	      saveurl+=normalPicName;          //����·��
	      myFile.saveAs(saveurl,mySmartUpload.SAVE_PHYSICAL);
	  }
	  else{
	   alarmPicName=filename;
	   String saveurl=request.getRealPath("/")+url;
	      saveurl+=alarmPicName;          //����·��
	      myFile.saveAs(saveurl,mySmartUpload.SAVE_PHYSICAL);
	  }
	    Class.forName("org.gjt.mm.mysql.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");
	   Statement stmt=conn.createStatement();
	   stmt.executeUpdate("update team set projectname='"+filename+"' where teamid='"+teamid+"';");
	    }
	  else{
	        out.print ("<script>alert('"+errMsg+"');this.history.go(-1);</script>");
	}
	}
	}
	}
    session.setAttribute("teamid",teamid);
	out.println("<center><font size=2 color=blue>���ڴ�����Ϣ�����Ժ�........</font></center><meta http-equiv='refresh' content='2;url=2indexdown.jsp '>");
	%>
