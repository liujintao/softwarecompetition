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
public class LoginBean {
     private Connection con;
     private String Str;

    public LoginBean() throws Exception {
        Class.forName("org.gjt.mm.mysql.Driver");
        this.con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");

    }
    public int login(String account,String password,String type)throws Exception
    {
        Statement stmt=con.createStatement();
        if(type.equals("teacher2")){
             Str="select * from teacher where account='"+account+"' and password='"+password+"'and type='"+"指导老师';";
        }
        else if(type.equals("teacher1")){
            Str="select * from teacher where account='"+account+"' and password='"+password+"'and type='"+"命题老师';";

        }
        else{
             Str="select * from "+type+" where account='"+account+"' and password='"+password+"';";

        }
        ResultSet rst=stmt.executeQuery(Str);
        if(rst.next())
            return rst.getInt(1);
        else
            return 0;

    }


}
