/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao.regist;
import java.sql.*;
/**
 *
 * @author xiao
 */
public class RegistConnection {
    private Connection con;
    public RegistConnection()throws Exception {
          Class.forName("org.gjt.mm.mysql.Driver");
        this.con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/web", "root", "anxin");

    }
    public void sumregist(String name,String info,String tel,String email)throws Exception{
        Statement stmt=con.createStatement();
        String str="insert into summer(name,info,tel,email,f )values ('"+name+"','"+info+"','"+tel+"','"+email+"','N');";
        stmt.execute(str);
        stmt.close();
    }
     public void youngregist(String name,String location,String tel,String email)throws Exception{
        Statement stmt=con.createStatement();
        String str="insert into young(name,location,tel,email,f )values ('"+name+"','"+location+"','"+tel+"','"+email+"','N');";
        stmt.execute(str);
        stmt.close();
    }



}
