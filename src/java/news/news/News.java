/**
*  Title  n
*  @author: an
*  Company: http://www.pcccp.com
*  Copyright: Copyright (c) 2003
*  @version 1.0
*  ?��?表中??��?��?�??�??
*/
package news.news;

import news.database.DBConnect;
import java.util.*;


public class News {

	public String topic,body,adddate,classn;

	public int hits,ID;

	public News(){};

	public int getID(){
		return ID;
	}

	public String getClassn(){
		return classn;
	}

	public String getTopic(){
		return topic;
	}

	public String getBody(){
		return body;
	}

	public int getHits(){
		return hits;
	}

	public String getAdddate(){
		return adddate;
	}



	//????��????ID
	public void setID(int i){
		this.ID = i;
	}

	//????��?�??类�?ID
	public void setClassn(String s){
		this.classn = s;
	}
 public void setTopic(String s){
		this.topic = s;
	}
 public void setBody(String s){
		this.body = s;
	}

	public void setHits(int i){
		this.hits = i;
	}

	public void setAdddate(String s){
		this.adddate = s;
	}

}