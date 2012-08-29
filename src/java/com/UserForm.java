package com;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.*;
public class UserForm extends ActionForm
{
	private User user=new User();
	public void setName(String name)
	{user.setName(name);}
	public String getName()
	{return user.getName();}
	public void setSoftid(int softid)
	{user.setSoftid(softid);}
	public int getSoftid()
	{return user.getSoftid();}
	public void setCid(String cid)
	{user.setCid(cid);}
	public String getCid()
	{return user.getCid();}
	public void setJob(String job)
	{user.setJob(job);}
	public String getJob()
	{return user.getJob();}
	public void setAward(String award)
	{user.setAward(award);}
	public String getAward()
	{return user.getAward();}
	public void setUser(User user)
	{this.user=user;}
	public User getUser()
	{return this.user;}
	public void reset(ActionMapping mapping,HttpServletRequest request)
	{this.user=new User();}
	public ActionErrors validate(ActionMapping mapping,HttpServletRequest request)
	{ActionErrors errors=new ActionErrors();
	if(user.getName()==null)
		{
	}
	return errors;
	}

}