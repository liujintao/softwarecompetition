/**
*  Title  新闻管理系统
*  @author: an
*  Company: http://www.pcccp.com
*  Copyright: Copyright (c) 2003
*  @version 1.0
*  管理员的一些增，删，改操作
*/
package news.admin;

import news.database.DBConnect;
import news.news.*;
import news.admin.*;
import news.util.*;
import java.sql.*;
import java.util.*;

public class NewsControl extends News{

public ResultSet rs;

private int newsid;

public NewsControl(){};

/*
* 添加新闻
*/
public int insertnews(){
	DBConnect dbc = null;
	try{
		dbc = new DBConnect();
		dbc.prepareStatement("INSERT INTO news ( topic,body,adddate,classn) VALUES ( ?,?,?,? )");
		dbc.setBytes(1,topic.getBytes("GB2312"));
		dbc.setBytes(2,body.getBytes("GB2312"));
		dbc.setBytes(3,GetDate.getStringDate().getBytes("GB2312"));
		dbc.setString(4,classn);
		dbc.executeUpdate();

		dbc.prepareStatement("SELECT max(id) FROM news");
		rs = dbc.executeQuery();
		if(rs.next())
				newsid = rs.getInt(1);

	}catch(Exception e){
			System.err.println(e);
		}finally{
			try{
				dbc.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	return newsid;
}

/*
* 修改新闻
*/
public void modifynews(){
DBConnect dbc = null;
	try{
		dbc = new DBConnect();
		dbc.prepareStatement("UPDATE news SET topic=?,body=?,classn=? WHERE id=?");
		dbc.setBytes(1,topic.getBytes("GB2312"));
		dbc.setBytes(2,body.getBytes("GB2312"));
		dbc.setString(3,classn);
		dbc.setInt(4,ID);
		dbc.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{
	try{
		dbc.close();
	}catch(Exception e){
		e.printStackTrace();
		}
	}
}

/*
* 删除新闻
*/
public void delnews(){
	try{
		DBConnect dbc = new DBConnect();
		dbc.prepareStatement("delete from news WHERE id=?");
		dbc.setInt(1,ID);
		dbc.executeUpdate();
		dbc.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}

/*
* 新闻浏览次数加一
*/
public void addhits(){
DBConnect dbc = null;
	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("UPDATE news SET hits = hits +1 WHERE id = ?");
		dbc.setInt(1,ID);
		dbc.executeUpdate();
	}catch(Exception e){
		System.err.println(e);
	}finally{
	try{
		dbc.close();
	}catch(Exception e){
		e.printStackTrace();
		}
	}
}

}