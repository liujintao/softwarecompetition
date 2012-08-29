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
public class SoftStudentConfig {
    private String train ;
    private String meeting;
    private String job;
    private String teamname;
    private Connection con;
    public SoftStudentConfig(String train,String meeting,String job,String teamname) throws Exception
    {
         Class.forName("org.gjt.mm.mysql.Driver");
        this.con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/web","root","anxin");
        this.job=job;
        this.meeting=meeting;
        this.teamname=teamname;
        this.train=train;
    }
    public int checkTeam(String name) throws Exception{
      Statement stmt=con.createStatement();
      ResultSet rst=stmt.executeQuery("select teamid from team where name='"+name+"';");
       if(rst.next())
          return rst.getInt("teamid");
       else
           return 0;
    }
    public void Config(String account,int id) throws Exception
 {
        Statement stmt = con.createStatement();
        if (id == 0) {
            stmt.execute("insert into team(name,money,put,first,second,third ) values ('" + teamname + "','" + "N" + "','" + "N" + "'," + "NULL" + "," + "NULL" + "," + "NULL);");
            id = this.checkTeam(teamname);
        }
        String str = "update softstudent set train='" + train + "',meeting='" + meeting + "',job='" + job +" ',teamid= "+id + "  where account='" + account + "';";
       stmt.execute(str);
    }


}
