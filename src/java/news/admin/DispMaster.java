/**
*  Title  新闻管理系统
*  @author: 陈钢
*  Company: http://www.pcccp.com
*  Copyright: Copyright (c) 2003
*  @version 1.0
*  管理员表中的一些查询操作
*/
package news.admin;

import news.database.DBConnect;
import news.news.*;
import java.sql.*;
import java.util.*;

public class DispMaster extends Master{

public boolean ismaster;

public ResultSet rs;

public DispMaster(){};

/*login*/
public boolean chkLogin() throws Exception {
	DBConnect dbc = null;
	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT * FROM adminator WHERE type=editor and name = ? and password = ?");
		dbc.setBytes(1,name.getBytes("GB2312"));
		dbc.setBytes(2,password.getBytes("GB2312"));
		rs = dbc.executeQuery();
		if(!rs.next()){
			ismaster = false;
		}else{
			ismaster = true;
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
	return ismaster;
}

/*
* 查询所有的管理员,检查是否重复
*/
public boolean reLogin() throws Exception {
	DBConnect dbc = null;
	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT * FROM adminator WHERE type=editor and name = ?");
		dbc.setBytes(1,name.getBytes("GB2312"));
		rs = dbc.executeQuery();
		if(!rs.next()){
			ismaster = false;
		}else{
			ismaster = true;
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
	return ismaster;
}

/*
* 查询所有的管理员(按发新闻数排序)
*/
public Vector allMaster() {
	DBConnect dbc = null;
	Vector allMasterVector = new Vector();

	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT * FROM adminator where type=editor and order by total desc");
		rs = dbc.executeQuery();
			while(rs.next()){
			Master master = new Master();
			master.setID(rs.getInt("id"));
			master.setName(rs.getString("name"));
			master.setPassword(rs.getString("pass"));
			master.setLoginnum(rs.getInt("loginnum"));
			allMasterVector.add(master);
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
	return allMasterVector;
}

/*
* 查询所有的管理员(按id排序)
*/
public Vector masterOrderID() {
	DBConnect dbc = null;
	Vector allMasterVector = new Vector();

	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT * FROM adminator where type=editor order by id");
		rs = dbc.executeQuery();
			while(rs.next()){
			Master master = new Master();
			master.setID(rs.getInt("id"));
			master.setName(rs.getString("name"));
			master.setPassword(rs.getString("pass"));
			allMasterVector.add(master);
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
	return allMasterVector;
}

/*
* 计算管理员的总数
*/
public int masterNum() {
	DBConnect dbc = null;
	int masterCount = 0;
	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT count(*) FROM adminator where type=editor");
		rs = dbc.executeQuery();
		if(rs.next())	masterCount = rs.getInt(1);
	}catch(Exception e){
		System.err.println(e);
	}finally{
		try{
			dbc.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	return masterCount;
}

/*
* 根据ID得到管理员
*/
public Master idToMaster() {
	DBConnect dbc = null;
	Master master = new Master();
	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT * FROM adminator where type=editor and id = ?");
		dbc.setInt(1,ID);
		rs = dbc.executeQuery();
			if(rs.next()){
			master.setID(rs.getInt("id"));
			master.setName(rs.getString("name"));
			master.setPassword(rs.getString("pass"));
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
	return master;
}

/*
* 根据用户名称得到管理员
*/
public Master nameToMaster() {
	DBConnect dbc = null;
	Master master = new Master();
	try{
		dbc  = new DBConnect();
		dbc.prepareStatement("SELECT * FROM adminator where type=editor and name = ?");
		dbc.setBytes(1,name.getBytes("GB2312"));
		rs = dbc.executeQuery();
			if(rs.next()){
			master.setID(rs.getInt("id"));
			master.setName(rs.getString("name"));
			master.setPassword(rs.getString("pass"));
			master.setLoginnum(rs.getInt("loginnum"));
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
	return master;
}

}