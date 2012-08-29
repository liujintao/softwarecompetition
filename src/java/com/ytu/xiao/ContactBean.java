package com.ytu.xiao;
import java.util.*;
import java.sql.*;
import sun.security.action.GetIntegerAction;
public class ContactBean
{
	private Connection conn;
	Vector v;
    String type;
	public ContactBean(String type)throws Exception
	{
		 Class.forName("org.gjt.mm.mysql.Driver");
        this.conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/web", "root", "anxin");
		v=new Vector();
        this.type=type;
	}
	public int getAvailableCount()throws Exception
	{
		int ret=0;
        String realtype=null;
        if(type.equals("englishstudentfee"))
            realtype="englishstudent";
        else if(type.equals("teamfee"))
        realtype="team";
        else if(type.equals("allteacher"))
            realtype="teacher";
            else
                realtype=type;
		Statement stmt=conn.createStatement();
		String strSql="select count(*) from "+realtype+";";
		ResultSet rset=stmt.executeQuery(strSql);
		while(rset.next())
		{
			ret=rset.getInt(1);
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
            String strSql=null;
            if(type.equals("company"))
            {
                strSql = "select * from company order by compid asc limit " + start + "," + pageBean.rowsPerPage + ";";
                ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                    Object[] obj = new Object[2];
                    obj[0] = rset.getInt(1);
                    obj[1] = rset.getString(2);
                    v.add(obj);
                }
                rset.close();
            }
            else if(type.equals("train"))
            {
                strSql="select * from train order by schoolname asc limit "+start+","+pageBean.rowsPerPage+";";
                 ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                    Object[] obj = new Object[3];
                    obj[0] = rset.getString("schoolname");
                    obj[1] = rset.getString("tel");
                    obj[2]=rset.getString("pass");
                    v.add(obj);
                }
                rset.close();
            }
            else  if(type.equals("englishstudent"))
            {
                  strSql="select * from englishstudent order by name asc limit "+start+","+pageBean.rowsPerPage+";";
                       ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                    Object[] obj = new Object[5];
                    obj[0] = rset.getString("name");
                    obj[1] = rset.getString("tel");
                    obj[2]=rset.getString("email");
                    obj[3]=rset.getInt("score");
                    obj[4]=rset.getInt(1);
                    v.add(obj);
                }
                rset.close();
            }
            else if(type.equals("team")){
                    strSql="select * from team order by name asc limit "+start+","+pageBean.rowsPerPage+";";
                       ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                    Object[] obj = new Object[5];
                    obj[0] = rset.getString("name");
                    obj[1] = rset.getString("articlename");
                    obj[2]=rset.getString("examname");
                    obj[3]=rset.getInt("score");
                    obj[4]=rset.getInt(1);
                    v.add(obj);
                }
                rset.close();
            }
            else if(type.equals("teacher")){
           strSql="select * from teacher  where type='指导老师' order by name asc limit "+start+","+pageBean.rowsPerPage+";";
            ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                    Object[] obj = new Object[3];
                    obj[0] = rset.getInt(1);
                    obj[1] = rset.getString("account");
                    obj[2]=rset.getString("name");
                    v.add(obj);
                }
                rset.close();
            }
                 else if(type.equals("englishstudentfee")){
           strSql="select * from englishstudent   order by name asc limit "+start+","+pageBean.rowsPerPage+";";
            ResultSet rset = stmt.executeQuery(strSql);
            java.util.Date now=new java.util.Date();
             java.util.Date cp=new java.util.Date(2009, 12, 12, 0, 0, 0);
                while (rset.next()) {
                    Object[] obj = new Object[4];
                    obj[0] = rset.getString("name");
                    obj[1] = rset.getString("tel");
                    if(now.before(cp))
                    obj[2]=rset.getString("firstf");
                    else
                    obj[2]=rset.getString("secondf");
                    obj[3]=rset.getInt(1);
                    v.add(obj);
                }
                rset.close();
            }
             else if(type.equals("teamfee")){
           strSql="select * from team  order by name asc limit "+start+","+pageBean.rowsPerPage+";";
            ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                    Object[] obj = new Object[4];
                    obj[0] = rset.getString("name");
                    obj[1] = rset.getString("put");
                    obj[2]=rset.getString("money");
                        obj[3]=rset.getInt(1);
                    v.add(obj);
                }
                rset.close();
            }
              else if(type.equals("allteacher")){
           strSql="select * from teacher  order by name asc limit "+start+","+pageBean.rowsPerPage+";";
            ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                Object[] obj = new Object[4];
                obj[0] = rset.getString("name");
                obj[1] = rset.getString("account");
                obj[2]=rset.getString("tel");
                obj[3] = rset.getString("email");
                v.add(obj);
                }
                rset.close();
                }
              else if(type.equals("young")){
                strSql="select * from young order by name asc limit "+start+","+pageBean.rowsPerPage+";";
                ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                Object[] obj = new Object[6];
                obj[0] = rset.getString("name");
                obj[1] = rset.getString("tel");
                obj[2]=rset.getString("email");
                obj[3] = rset.getString("f");
                obj[4]=rset.getString("location");
                obj[5]=rset.getInt(1);
                v.add(obj);
                }
                rset.close();
              }
               else if(type.equals("summer")){
                strSql="select * from summer order by name asc limit "+start+","+pageBean.rowsPerPage+";";
                ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                Object[] obj = new Object[6];
                obj[0] = rset.getString("name");
                obj[1] = rset.getString("tel");
                obj[2]=rset.getString("email");
                obj[3] = rset.getString("f");
                obj[4]=rset.getString("info");
                obj[5]=rset.getInt(1);
                v.add(obj);
                }
                rset.close();
              }
             else if(type.equals("adminator")){
                strSql="select * from adminator order by name asc limit "+start+","+pageBean.rowsPerPage+";";
                ResultSet rset = stmt.executeQuery(strSql);
                while (rset.next()) {
                Object[] obj = new Object[4];
                obj[0] = rset.getString("account");
                obj[1] = rset.getString("name");
                obj[2]=rset.getString("email");
                obj[3] = rset.getInt("id");
                v.add(obj);
                }
                rset.close();
              }
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

	