/**
*  Title  新闻管理系统
*  @author: 陈钢
*  Company: http://www.pcccp.com
*  Copyright: Copyright (c) 2003
*  @version 1.0
*  新闻表中的一些查询操作
*/
package news.news;

import news.database.DBConnect;
import news.news.*;
import news.util.*;
import java.sql.*;
import java.util.*;

public class DispNews extends News{

public ResultSet rs;

public DispNews(){};

/*
* 根据classn得到某栏目所有的新闻
*/
public Vector classnToNews() {
	DBConnect dbc = null;
	Vector newsInfoVector = new Vector();

	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT * FROM news WHERE  classn = ? order by id desc");
        dbc.setString(1,classn);
		rs = dbc.executeQuery();
			while(rs.next()){
			News news = new News();
			news.setID(rs.getInt("id"));
			news.setTopic(rs.getString("topic"));
			news.setBody(rs.getString("body"));
			news.setHits(rs.getInt("hits"));
			news.setAdddate(rs.getString("adddate"));
            news.setClassn(rs.getString("classn"));
			newsInfoVector.add(news);
		}
	}catch(Exception e){
		System.err.println(e);
	}finally{
		try{
			dbc.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	return newsInfoVector;
}

/*
* 根据ID得到新闻
*/
public News idToNews() {
	DBConnect dbc = null;
	News news = new News();
	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT * FROM news WHERE id = ?");
		dbc.setInt(1,ID);
		rs = dbc.executeQuery();
			if(rs.next()){
			news.setID(rs.getInt("id"));
			news.setTopic(rs.getString("topic"));
			news.setBody(rs.getString("body"));
			news.setHits(rs.getInt("hits"));
			news.setAdddate(rs.getString("adddate"));
			news.setClassn(rs.getString("classn"));
		}
	}catch(Exception e){
		System.err.println(e);
	}finally{
		try{
			dbc.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	return news;
}

/*
* 查询所有的新闻(按点击数排序)
*/
public Vector allNews() {
	DBConnect dbc = null;
	Vector allNewsVector = new Vector();

	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT * FROM news order by hits desc");
		rs = dbc.executeQuery();
			while(rs.next()){
			News news = new News();
			news.setID(rs.getInt("id"));
			news.setTopic(rs.getString("topic"));
			news.setBody(rs.getString("body"));
			news.setHits(rs.getInt("hits"));
			news.setAdddate(rs.getString("adddate"));
			news.setClassn(rs.getString("classn"));
			allNewsVector.add(news);
		}
	}catch(Exception e){
		System.err.println("error:"+e);
	}finally{
		try{
			dbc.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	return allNewsVector;
}

/*
* 计算某类别新闻的总数
*/
public int newsNum() {
	DBConnect dbc = null;
	int newsCount = 0;
	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT Count(*) FROM news WHERE classn = ?");
		dbc.setString(1,classn);
		rs = dbc.executeQuery();
		if(rs.next())	newsCount = rs.getInt(1);
	}catch(Exception e){
		System.err.println(e);
	}finally{
		try{
			dbc.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	return newsCount;
}

/*
* 计算某新闻的最大点击数
*/
public int maxHit() {
	DBConnect dbc = null;
	int maxhit = 0;
	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT max(hits) FROM news");
		rs = dbc.executeQuery();
		if(rs.next())	maxhit = rs.getInt(1);
	}catch(Exception e){
		System.err.println(e);
	}finally{
		try{
			dbc.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	return maxhit;
}
}

