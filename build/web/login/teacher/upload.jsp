<%--
    Document   : upload
    Created on : 2009-8-16, 8:41:27
    Author     : wei
--%>

<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*"
    import="java.sql.*,java.io.*,com.jspsmart.upload.*" import="com.ytu.xiao.*,java.util.*"%>
 <html>
 <head>
  <title>�ļ��ϴ�</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 </head>
 <body>
 <% User teacheruser=(User)session.getAttribute("user");
  SmartUpload mySmartUpload =new SmartUpload();
  String deviceId=mySmartUpload.getRequest().getParameter("deviceInf");
     // ��ʼ��
    final String upFileType="txt|TXT|doc|DOC|rar|RAR|zip|ZIP|pdf|PDF";     //�ϴ��ļ�����
	final int MAXFILESIZE=100*1024*1024;        //�ϴ��ļ���С����100m
	String errMsg=null;    //������Ϣ
	boolean err=false;     //�����־
	int fileSize=0;        //�ļ���С
	String url="upload/";      //Ӧ��֤�ڸ�Ŀ¼���д�Ŀ¼�Ĵ���
	String fileType ="";
	String normalPicName = deviceId+"n";
	String alarmPicName  = deviceId+"a";
	mySmartUpload.initialize(pageContext);
	// �ϴ��ļ�
	mySmartUpload.upload();
    String teacherid=Integer.toString( teacheruser.getId());
	//String teacherid=mySmartUpload.getRequest().getParameter("teacherid");
    String name=mySmartUpload.getRequest().getParameter("name");
	url=url+teacherid+"/";
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
	        errMsg="�ļ�"+filename+"�ϴ�ʧ�ܣ�ֻ�����ϴ����¸�ʽ���ļ���"+upFileType;
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
	   stmt.executeUpdate("insert into title values(null,'"+name+"','"+size+"','N','"+teacherid+"','"+filename+"');");
	    }
	  else{
	        out.print ("<script>alert('"+errMsg+"');this.history.go(-1);</script>");
	}
	}
	}
	}
    session.setAttribute("teacherid",teacherid);
	out.println("<center><font size=2 color=blue >���ڴ�����Ϣ�����Ժ�........</font></center><meta http-equiv='refresh' content='2;url=indexdown.jsp '>");
    %>
 </body>
 </html>