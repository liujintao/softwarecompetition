/**
*  Title  ?°é?ç®¡ç?ç³»ç?
*  @author: ???
*  Company: http://www.pcccp.com
*  Copyright: Copyright (c) 2003
*  @version 1.0
*  ç®¡ç???¡¨ä¸??ä¸??å­??
*/
package news.admin;

import news.database.DBConnect;
import news.news.*;
import java.util.*;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


public class Master{

public int ID,total,classid,loginnum;
      public String name;
    public String account;
     public String email;
    public String tel;
    public String info;
    public String password;

public Master(){};
public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the account
     */
    public String getAccount() {
        return account;
    }

    /**
     * @param account the account to set
     */
    public void setAccount(String account) {
        this.account = account;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the tel
     */
    public String getTel() {
        return tel;
    }

    /**
     * @param tel the tel to set
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    /**
     * @return the info
     */
    public String getInfo() {
        return info;
    }

    /**
     * @param info the info to set
     */
    public void setInfo(String info) {
        this.info = info;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;}

public int getID(){
	return ID;
}



public int getTotal(){
	return total;
}

public int getClassid(){
	return classid;
}

public int getLoginnum(){
	return loginnum;
}

//????????D
public void setID(int i){
	this.ID = i;
}






public void setTotal(int i){
	this.total = i;
}


public void setLoginnum(int i){
	this.loginnum = i;
}


}