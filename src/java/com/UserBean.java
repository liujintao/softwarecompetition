package com;
import java.sql.*;
import javax.sql.*;
import java.io.*;
public class UserBean
{
	private Connection conn;
	  public String trans(String str) {
        try
        {
            String temp = new String(str.getBytes("UTF-8"), "gb2312");
            return temp;
        }
        catch (Exception e)
        {
            return null;
        }
       
    }
	public UserBean()throws Exception
	{
		Class.forName("org.gjt.mm.mysql.Driver");
        this.conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web?useUnicode=true&characterEncoding=gb2312","root","anxin");
	}
		public ResultSet showUser(User user)throws Exception
	{
		Statement stmt=conn.createStatement();
		ResultSet result=stmt.executeQuery("select softstudent.name,softstudent.job,team.award,softstudent.cid from softstudent,team where softstudent.softid='"+user.getSoftid()+"' and softstudent.teamid=team.teamid");
		return result;
	}
		public void updateUser(User user)throws Exception
	{
		Statement stmt=conn.createStatement();
		int col=stmt.executeUpdate("update softstudent set cid='"+(new id().Code(user.getSoftid()))+"'where softid='"+user.getSoftid()+"'");
	}
		public ResultSet showUser2(User user)throws Exception
	{
		Statement stmt=conn.createStatement();
		ResultSet result=stmt.executeQuery("select softstudent.name,softstudent.job,team.award from softstudent,team where softstudent.cid='"+user.getCid()+"' and softstudent.teamid=team.teamid");
		return result;
	}
}

