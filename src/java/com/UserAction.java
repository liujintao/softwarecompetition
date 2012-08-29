package com;
import org.apache.struts.action.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.sql.*;
import java.io.*;
public class UserAction extends Action
{
		public String job1;
		public String name1;
		public String award1;
		public String cid1;

	public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,
		HttpServletResponse response)throws Exception
	{
		UserForm f=(UserForm)form;
		UserBean bean=new UserBean();
		ResultSet rst=bean.showUser(f.getUser());
		bean.updateUser(f.getUser());
		while(rst.next())
		{
		name1=rst.getString("name");
		job1=rst.getString("job");
		award1=rst.getString("award");
		cid1=rst.getString("cid");
		}

		f.setJob(job1);
		f.setName(name1);
		f.setAward(award1);
		f.setCid(cid1);

		request.setAttribute("User",f.getUser());
		return(mapping.findForward("userCreated"));
	}
}