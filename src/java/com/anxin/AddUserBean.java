/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.anxin;
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
    
     public void addUser(trainer user)throws Exception{
         Statement stmt = con.createStatement();
         Str = "insert into train(schoolname,department,attachname,tel,email,circuit,schedule,headname,pass) values(" + "'" + user.getSchoolname() + "','" + user.getDepartment() + "','" + user.getAttachname() + "','" + user.getTel() + "','" + user.getEmail() + "','" + user.getCircuit() + "','" + user.getSchedule() + "','" + user.getHeadname() + "','"  + "N" + "')";
         stmt.executeUpdate(Str);
         stmt.close();
     }
 

}
