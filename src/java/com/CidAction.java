
package com;
import org.apache.struts.action.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.sql.*;
import java.io.*;
public class CidAction extends Action
{
		public String job2;
		public String name2;
		public String award2;

	public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,
		HttpServletResponse response)throws Exception
	{
		UserForm f2=(UserForm)form;
		UserBean bean2=new UserBean();
		ResultSet rst2=bean2.showUser2(f2.getUser());
		while(rst2.next())
		{
		name2=rst2.getString("name");
		job2=rst2.getString("job");
		award2=rst2.getString("award");
		}
		f2.setJob(job2);
		f2.setName(name2);
		f2.setAward(award2);
		request.setAttribute("User2",f2.getUser());
		return(mapping.findForward("userFound"));
	}
}