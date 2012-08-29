/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao;
import java.sql.*;
import java.util.*;
/**
 *
 * @author xiao
 */
public class UserConnection {
    private Connection con;
    private String Str;

    public UserConnection() throws Exception {
        Class.forName("org.gjt.mm.mysql.Driver");
        this.con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/web", "root", "anxin");

    }

    public int Checkfee(User user) throws Exception {
        String type = user.getType();
        String fee = null;
        int t = 1;
        Statement stmt = con.createStatement();
        if (type.equals("englishstudent")) {
            Str = "select firstf from englishstudent where account='" + user.getAccount() + "';";
            ResultSet rst = stmt.executeQuery(Str);
            if (rst.next()) {
                fee = rst.getString("firstf");
                if (fee == null || fee.equals("N")) {
                    t = 0;
                }
            }
            rst.close();
        } else if (type.equals("softstudent")) {
            int teamid=this.getTeamId(user.getId());
            Str="select money from team where teamid="+teamid+";";
            ResultSet rst = stmt.executeQuery(Str);
                 if (rst.next()) {
                fee = rst.getString("money");
                if (fee == null || fee.equals("N")) {
                    t = 0;
                }
            }
        } else;
        stmt.close();
        return t;
    }

    public EnglishStudent getEnglishStudent(int id) throws Exception {
        EnglishStudent user = new EnglishStudent();
        Str = "select * from englishstudent  where englishid=" + id + ";";
        Statement stmt = con.createStatement();
        ResultSet rst = stmt.executeQuery(Str);
        if (rst.next()) {
            user.setAccount(rst.getString("account"));
            user.setAfinal(rst.getString("second"));
            user.setAfinalf("secondf");
            user.setEmail(rst.getString("email"));
            user.setFirst(rst.getString("firsta"));
            user.setFirstf(rst.getString("firstf"));
            user.setInfo(rst.getString("info"));
            user.setMeeting(rst.getString("meeting"));
            user.setName(rst.getString("name"));
            user.setPassword(rst.getString("password"));
            user.setTel(rst.getString("tel"));
            user.setTrain(rst.getString("train"));
            user.setAward(rst.getString("award"));
        }
        rst.close();
        stmt.close();
        return user;
    }

    public SoftStudent getSoftStudent(int id) throws Exception {
        SoftStudent user = new SoftStudent();
        Str = "select * from softstudent  where softid=" + id + ";";
        Statement stmt = con.createStatement();
        ResultSet rst = stmt.executeQuery(Str);
        if (rst.next()) {
            user.setAccount(rst.getString("account"));
            user.setEmail(rst.getString("email"));
            user.setInfo(rst.getString("info"));
            user.setMeeting(rst.getString("meeting"));
            user.setName(rst.getString("name"));
            user.setPassword(rst.getString("password"));
            user.setTel(rst.getString("tel"));
            user.setTrain(rst.getString("train"));
        }
        rst.close();
        stmt.close();
        return user;

    }

    public Teacher getTeacher(int id) throws Exception {
        Teacher user = new Teacher();
        Str = "select * from teacher  where teacherid=" + id + ";";
        Statement stmt = con.createStatement();
        ResultSet rst = stmt.executeQuery(Str);
        if (rst.next()) {
            user.setAccount(rst.getString("account"));
            user.setInfo(rst.getString("info"));
            user.setName(rst.getString("name"));
            user.setPassword(rst.getString("password"));
            user.setEmail(rst.getString("email"));
            user.setInfo(rst.getString("info"));
            user.setTel(rst.getString("tel"));
        }
        rst.close();
        stmt.close();
        return user;
    }
   
    public Team getTeam(int teamid) throws Exception{
       Team team=new Team();
        Str="select * from team where teamid ="+teamid+";";
          Statement stmt = con.createStatement();
          ResultSet rst = stmt.executeQuery(Str);
          int titleid=0;
          int teacherid=0;
          if (rst.next()) {
             team.setName(rst.getString("name"));
             team.setTeamid(rst.getInt("teamid"));
             team.setMoney(rst.getString("money"));
             team.setPut(rst.getString("put"));
             team.setArticlename(rst.getString("articlename"));
             team.setArticlesize(rst.getString("articlesize"));
             team.setAward("award");
             titleid=rst.getInt("titleid");
             teacherid=rst.getInt("teacherid");
          }
        rst.close();
        Str="select name from teacher where teacherid="+teacherid+";";
        rst=stmt.executeQuery(Str);
        if(rst.next()){
        team.setTeacher(rst.getString("name"));
        }
        rst.close();

        Str="select name from title where titleid="+titleid+";";
        rst=stmt.executeQuery(Str);

        if(rst.next()){
        team.setTitle(rst.getString("name"));
        }
        rst.close();
        stmt.close();
          return team;
    }
    public void modify(EnglishStudent user) throws Exception {
        Statement stmt = con.createStatement();
        Str = "update englishstudent set password='" + user.getPassword() + "'," + "info='" + user.getInfo() + "',tel='" + user.getTel() + "',email='" + user.getEmail() + "',train='" + user.getTrain() + "',meeting='" + user.getMeeting() + "' where account='" + user.getAccount() + "';";
        stmt.executeUpdate(Str);

    }

    public void modify(SoftStudent user) throws Exception {
        Statement stmt = con.createStatement();
        Str = "update softstudent set password='" + user.getPassword() + "'," + "info='" + user.getInfo() + "',tel='" + user.getTel() + "',email='" + user.getEmail() + "',train='" + user.getTrain() + "',meeting='" + user.getMeeting() + "',job='" + user.getJob() + "' where account='" + user.getAccount() + "';";
        stmt.executeUpdate(Str);

    }

    public void modify(Teacher user) throws Exception {
        Statement stmt = con.createStatement();
        Str = "update teacher set password='" + user.getPassword() + "'," +"tel='"+user.getTel()+"',email='"+user.getEmail()+ "',info='" + user.getInfo() + "' where account='" + user.getAccount() + "';";
        stmt.executeUpdate(Str);

    }

    public Vector getteam(int teacherid) throws Exception {
        Statement stmt = con.createStatement();
        Vector v = new Vector();
        Str = "select * from team where teacherid=" + teacherid + ";";
        ResultSet rst = stmt.executeQuery(Str);
        while (rst.next()) {
            Object[] obj = new Object[5];
            obj[0] = rst.getInt("teamid");
            obj[1] = rst.getString("name");
            obj[2] = rst.getString("money");
            obj[3] = rst.getString("put");
            obj[4] = rst.getInt("titleid");
            v.add(obj);
        }
        rst.close();
        stmt.close();
        return v;
    }
    public Vector getAllTeacher() throws Exception{
          Statement stmt = con.createStatement();
        Vector v = new Vector();
        Str = "select * from teacher where type='指导老师';";
        ResultSet rst = stmt.executeQuery(Str);
          while (rst.next()) {
            Object obj[] = new Object[3];
            obj[0] = rst.getInt(1);
            obj[1] = rst.getString("account");
            obj[2]=rst.getString("name");
            v.add(obj);
        }
        rst.close();
        stmt.close();
        return v;
    }
    public Vector getScore(String type) throws Exception{
        Statement stmt = con.createStatement();
        Vector v = new Vector();
        Str = "select * from "+type+";";
        ResultSet rst = stmt.executeQuery(Str);
          while (rst.next()) {
            Object obj[] = new Object[5];
            obj[0] = rst.getInt(1);
            obj[1] = rst.getString("name");
            obj[2]=rst.getInt("score");
            obj[3]=rst.getString("examname")==null?"匿名":rst.getString("examname");
            obj[4]=rst.getString("comment");
            v.add(obj);
        }
        rst.close();
        stmt.close();
        return v;
    }

    public Vector getTeamMemeber(int teamid) throws Exception {
        Statement stmt = con.createStatement();
        Vector v = new Vector();
        Str = "select * from softstudent where teamid=" + teamid + ";";
        ResultSet rst = stmt.executeQuery(Str);
        while (rst.next()) {
            Object obj[] = new Object[2];
            obj[0] = rst.getString("name");
            obj[1] = rst.getString("job");
            v.add(obj);
        }
        rst.close();
        stmt.close();
        return v;
    }

    public int getTeamId(int softid) throws Exception{
        int t=0;
         Statement stmt = con.createStatement();
        Str="select teamid from softstudent where softid="+softid+";";
        ResultSet rst = stmt.executeQuery(Str);
        if(rst.next()){
           t=rst.getInt("teamid");
        }
       rst.close();
        stmt.close();
        return t;
    }

    public Vector getTeamInfo(int teamid)throws Exception{
        Statement stmt = con.createStatement();
        Vector v = new Vector();
        Str = "select * from softstudent where teamid=" + teamid + ";";
        ResultSet rst = stmt.executeQuery(Str);
        while (rst.next()) {
            Object obj[] = new Object[2];
            obj[0] = rst.getString("name");
            obj[1] = rst.getString("job");
            v.add(obj);
        }
        rst.close();
        stmt.close();
        return v;

    }
    public Vector gettitle()throws Exception{
         Statement stmt = con.createStatement();
        Vector v = new Vector();
         Str = "select * from title where tested='Y';";
        ResultSet rst = stmt.executeQuery(Str);
        while (rst.next()) {
            Object obj[] = new Object[2];
            obj[0] = rst.getInt(1);
            obj[1] = rst.getString("name");
            v.add(obj);
        }
        rst.close();
        stmt.close();
        return v;


    }

    public int setTeacher(int teacherid,int teamid) throws Exception{
          int t=0;
         Statement stmt = con.createStatement();
         try{
         Str="update team,teacher set team.teacherid="+teacherid+" where team.teamid="+teamid+" and teacher.teacherid="+teacherid+" and teacher.type='指导老师'";
         t=stmt.executeUpdate(Str);
         stmt.close();
         }
         catch(Exception e){
             e.printStackTrace();
         }
         return t;
    }
    public int setTitle(int titleid ,int teamid)throws Exception{
         int t=0;
         Statement stmt = con.createStatement();
         try{
         Str="update team set titleid="+titleid+" where teamid="+teamid;
        stmt.executeUpdate(Str);
         stmt.close();
         t=1;
        }
         catch(Exception e){
             e.printStackTrace();
         }
         return t;
    }

     public int checkPassword(String password,int id,String type) throws Exception{
         int t=0;
         Statement stmt = con.createStatement();
         String idtype=null;
         if(type.equals("teacher"))
             idtype="teacherid";
         else if(type.equals("softstudent"))
             idtype="softid";
         else
             idtype="englishid";
         Str="select password from "+type+" where "+idtype+"="+id+";";
         ResultSet rst=stmt.executeQuery(Str);
         if(rst.next())
         {
             if(rst.getString("password").equals(password))
                 t= 1;
         }
        return t;
     }
      public  int checkaward(User user)throws Exception{
         int t=0;
         Statement stmt = con.createStatement();
         if(user.getType().equals("englishstudent")){
              Str="select award from englishstudent where englishid="+user.getId()+";";
         }
         else
         {
              Str="select team.award from softstudent,team where softstudent.softid="+user.getId()+";";
         }
          ResultSet rst=stmt.executeQuery(Str);
          if(rst.next()&& rst.getString(1)!=null){
              t=1;

          }
         return t;

     }
}


