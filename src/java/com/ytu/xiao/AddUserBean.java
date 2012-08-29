/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao;
import java.sql.*;
/**
 *
 * @author xiao
 */
public class AddUserBean {
   private Connection con;
   private String Str;
    public AddUserBean() throws Exception{
       Class.forName("org.gjt.mm.mysql.Driver");
        this.con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");
    }
     public void addUser(EnglishStudent user)throws Exception{
         Statement stmt = con.createStatement();
         Str = "insert into englishstudent(name,account,info,password,tel,email,train,meeting,firstf,secondf) values(" + "'" + user.getName() + "','" + user.getAccount() + "','" + user.getInfo() + "','" + user.getPassword() + "','" + user.getTel() + "','" + user.getEmail() + "','" + "N" + "','" + "N" + "','" + "N" + "','" + "N" + "')";
         stmt.executeUpdate(Str);
         stmt.close();
     }
     public void addUser(Teacher user,String type) throws Exception{
          Statement stmt = con.createStatement();
          if(type.equals("teacher1"))
          Str="insert into teacher(name,account,password,info,tel,email,type) values ("+ "'"+user.getName()+"','"+user.getAccount()+"','"+user.getPassword()+"','"+user.getInfo()+"','"+user.getTel()+"','"+user.getEmail()+"','"+"命题老师');";
          else
              Str="insert into teacher(name,account,password,info,tel,email,type) values ("+ "'"+user.getName()+"','"+user.getAccount()+"','"+user.getPassword()+"','"+user.getInfo()+"','"+user.getTel()+"','"+user.getEmail()+"','"+"指导老师');";
          stmt.executeUpdate(Str);

         stmt.close();
     }
     public void addUser(SoftStudent user) throws Exception{
         Statement stmt = con.createStatement();
         Str="insert into softstudent(name,account,info,tel,email,password) values("+ "'"+user.getName()+"','"+user.getAccount()+"','"+user.getInfo()+"','"+user.getTel()+"','"+user.getEmail()+"','"+user.getPassword()+"')";
         stmt.executeUpdate(Str);
         stmt.close();
     }
     public int IsAccountExisted(String account,String type) throws Exception{
         Statement stmt = con.createStatement();
         int t=1;
         if(type.equals("teacher1")||type.equals("teacher2"))
         Str="select account from teacher where account='"+account+"';";
         else
             Str="select account from "+type+" where account='"+account+"';";
         ResultSet rst=stmt.executeQuery(Str);
         if(rst.next())     t=1;
         else t=0;
         rst.close();
         stmt.close();
         return t;
     }

}
