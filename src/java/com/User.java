package com;
public class User
{
	public String name;
	public String password;
	public int softid;
	public String cid;
	public String job;
	public String account;
	public String award;
	public void setName(String name)
	{
		this.name=name;
	}
	public void setPassword(String password)
	{
		this.password=password;
	}
	public String getName()
	{return this.name;}
	public String getPassword()
	{return this.password;}
	public int getSoftid()
	{return this.softid;}
	public void setSoftid(int softid)
	{this.softid=softid;}
	public String getCid()
	{return this.cid;}
	public void setCid(String cid)
	{this.cid=cid;}
	public void setAccount(String account)
	{
		this.account=account;
	}
	public String getAccount()
	{return this.account;}
	public String getJob()
	{return this.job;}
	public void setJob(String job)
	{this.job=job;}
		public void setAward(String award)
	{
		this.award=award;
	}
	public String getAward()
	{return this.award;}
}