package com.wei.app1;
import java.util.*;
import java.sql.*;
public class ContactBean
{
	private Connection conn;
	Vector v;
	public ContactBean()throws Exception
	{
		 Class.forName("org.gjt.mm.mysql.Driver");
        this.conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/web", "root", "anxin");
		v=new Vector();
	}
	public int getAvailableCount()throws Exception
	{
		int ret=0;
		Statement stmt=conn.createStatement();
		//String strSql="select count(*) from title;";
        String strSql="select * from title where tested='Y';";
		ResultSet rset=stmt.executeQuery(strSql);
		while(rset.next())
		{
            ret=ret+1;
		}
		return ret;		
		
	}
	public PageBean listData(String page)throws Exception
	{
		try
		{
			PageBean pageBean=new PageBean(this);
			int pageNum=Integer.parseInt(page);
			Statement stmt=conn.createStatement();
            int start=(pageNum-1)*pageBean.rowsPerPage;
           String strSql="select * from title where tested='Y' order by titleid asc limit "+start+","+pageBean.rowsPerPage+";";
			ResultSet rset=stmt.executeQuery(strSql);
			while(rset.next())
			{	
	                Object[] obj = new Object[3];
                    obj[0] = rset.getInt(1);
                    obj[1] = rset.getString(2);
					obj[2] = rset.getString(6);
                    v.add(obj);
	
            }
			rset.close();
			stmt.close();
			pageBean.curPage=pageNum;
			pageBean.data=v;
			return pageBean;
		}
		catch(Exception e)
		{
		   	e.printStackTrace();
			throw e;
			
		}
	}

	public Vector getResult()throws Exception
	{
		return v;
	}
}
	
	