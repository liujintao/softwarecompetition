/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao;
import java.sql.*;
import java.util.*;
import javax.naming.spi.DirStateFactory.Result;

/**
 *
 * @author xiao
 */
public class DatabaseConnection {
      private    Connection con;
      private int score1=70;
      private int score2=80;
      private int score3=90;

    public DatabaseConnection()throws Exception {
        Class.forName("org.gjt.mm.mysql.Driver");
        this.con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/web", "root", "anxin");
    }

    public Worker getWorker(int id ) throws Exception{
         Worker user=new Worker();
         Statement stmt=con.createStatement();
         String Str="select * from adminator where id="+id+";";
          ResultSet rst=stmt.executeQuery(Str);
            if (rst.next()) {
                user.setAccount(rst.getString("account"));
                user.setEmail(rst.getString("email"));
                user.setInfo(rst.getString("info"));
                user.setName(rst.getString("name"));
                user.setPassword(rst.getString("password"));
                user.setTel(rst.getString("tel"));
                user.setType(rst.getString("type"));
        }
        rst.close();
        stmt.close();
        return user;
    }
   public Worker getWorker(String account ) throws Exception{
           Worker user=new Worker();
         Statement stmt=con.createStatement();
         String Str="select * from adminator where account='"+account+"';";
          ResultSet rst=stmt.executeQuery(Str);
            if (rst.next()) {
                user.setAccount(rst.getString("account"));
                user.setEmail(rst.getString("email"));
                user.setInfo(rst.getString("info"));
                user.setName(rst.getString("name"));
                user.setPassword(rst.getString("password"));
                user.setTel(rst.getString("tel"));
                user.setType(rst.getString("type"));
        }
        rst.close();
        stmt.close();
        return user;

   }
    public int login(Worker user) throws Exception{
        Statement stmt=con.createStatement();
         String Str="select id from adminator where account='"+user.getAccount()+"' and password='"+user.getPassword()+"';";
         ResultSet rst=stmt.executeQuery(Str);
         if(rst.next())
             return rst.getInt("id");
         else
             return 0;
    }

    public int  Create(Worker user)  throws Exception{
        int t=0;
        try{
        Statement stmt=con.createStatement();
        String Str="insert into adminator(name,account,password,type) values('"+user.getName()+"','"+user.getAccount()+"','"+user.getPassword()+"','"+user.getType()+"');";
        stmt.execute(Str);
        t=1;
      }
        catch(Exception e){
            e.printStackTrace();
        }
        return t;
    }
    public int delete(String account) throws Exception{
        int t = 0;

        try {
            Statement stmt = con.createStatement();
            String sqlstr="select type from adminator where account='"+account+"';";
            ResultSet rst=stmt.executeQuery(sqlstr);
            while(rst.next()){
            if(!rst.getString(1).equals("adminator")){
            String Str = "delete from adminator where account='" + account + "';";
            t=stmt.executeUpdate(Str);
            }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }
    public int modify(Worker user) throws Exception{
        int t = 0;
        try {
            Statement stmt = con.createStatement();
            String Str = "update adminator set name='" + user.getName() + "',password='" + user.getPassword() + "',tel='" + user.getTel() + "',info='" + user.getInfo() + "',email='" + user.getEmail() + "' where account='" + user.getAccount() + "';";
            stmt.execute(Str);
            t = 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }
    public int checkPassword(String oldpassword, String account)throws Exception{
        int t=0;
         Statement stmt=con.createStatement();
         String Str="select account from adminator where password='"+oldpassword+"' and account='"+account+"';";
         ResultSet rst=stmt.executeQuery(Str);
         if(rst.next())
             t=1;
         rst.close();
         stmt.close();
        return t;
    }
    public int checkAccount(String account) throws Exception{
       int t=1;
          Statement stmt=con.createStatement();
           String Str="select account from adminator where account='"+account+"';";
           ResultSet rst=stmt.executeQuery(Str);
       if(rst.next())
             t=0;
         rst.close();
         stmt.close();
        return t;
    }
    public Vector getCompany( ) throws Exception{
          Statement stmt = con.createStatement();
        Vector v = new Vector();
        String Str = "select compid,compname from company ;";
        ResultSet rst = stmt.executeQuery(Str);
        while (rst.next()) {
            Object[] obj = new Object[2];
            obj[0] = rst.getInt(1);
            obj[1] = rst.getString(2);
            v.add(obj);
        }
        rst.close();
        stmt.close();
        return v;
    }
    public int deleteCompany(String comid)throws Exception{
        int t = 0;
        try {
            Statement stmt = con.createStatement();
            String Str = "delete from company where compid=" + comid + ";";
            stmt.execute(Str);
            t = 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }
    public int modifyCompany(String comid,String name) throws Exception{
           int t = 0;
        try {
            Statement stmt = con.createStatement();
            String Str = "update company set compname='"+name+"' where compid=" + comid + ";";
            stmt.execute(Str);
            t = 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }
    public int addCompany(String name) throws Exception{
            int t = 0;
        try {
            Statement stmt = con.createStatement();
            String Str = "insert into company(compname) values('"+name+"'); " ;
            stmt.execute(Str);
            t = 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }
    public Vector getAward(String award,String type) throws Exception{
        Statement stmt = con.createStatement();
        Vector v = new Vector();
        String Str =null;
        if(type.equals("team"))
            Str="select team.name,title.name,teacher.name,team.articlename from team,title,teacher where team.award='"+award+"'and team.teacherid=teacher.teacherid and title.titleid=team.titleid;";
        else
            Str="select * from englishstudent where award='"+award+"';";
        ResultSet rst = stmt.executeQuery(Str);
        if(type.equals("team")){
        while (rst.next()) {
                Object[] obj = new Object[4];
                obj[0] = rst.getString(1);
                obj[1] = rst.getString(2);
                obj[2] = rst.getString(3);
                obj[3] = rst.getString(4);
                v.add(obj);
            }
        }
        else {
            while (rst.next()) {
            Object[] obj = new Object[4];
            obj[0] = rst.getString("name");
            obj[1] = rst.getString("tel");
            obj[2] = rst.getString("email");
            obj[3] = rst.getString("score");
            v.add(obj);
            }
        }
        rst.close();
        stmt.close();
        return v;
    }
    private int checkFee(String type,int id) throws Exception{
        int t = 1;
        String Str=null;
        Statement stmt = con.createStatement();
        if (type.equals("englishstudent"))
            Str="select secondf from englishstudent where englishid="+id+";";
         else
             Str="select money from team where teamid="+id+";";
          ResultSet rst = stmt.executeQuery(Str);
          while(rst.next()){
              String result=rst.getString(1);
           if(result==null||result.equals("N")){
                t=0;
             }
          }
        return t;
    }
    private int checkId(String type,int id)throws Exception{
         int t = 0;
         String idItem;
          if(type.equals("team"))
            idItem="teamid";
        else
            idItem="englishid";
        String Str="select * from "+type+" where "+idItem+"="+id;
        Statement stmt = con.createStatement();
        ResultSet rst=stmt.executeQuery(Str);
        if(rst.next())
           t=1;
        rst.close();
        stmt.close();
        return t;
    }
    public  int setScore(int id,String type,int score,String suggestion) throws Exception{
        if(checkId(type, id)==0)
            return -1;
        if(checkFee(type, id)==0)
            return 0;
        Statement stmt = con.createStatement();
        String idItem;
        if(type.equals("team"))
        idItem="teamid";
        else
        idItem="englishid";
        String Str="update "+type+" set  score="+score+",comment='"+suggestion+"',award=null where "+idItem+"="+id+";";
        stmt.execute(Str);
        if(score>score3)
        {   Str="update "+type+" set award='一' where "+idItem+"="+id+";";
               stmt.execute(Str);
        }
        else if(score>score2)
        { Str="update "+type+" set award='二' where "+idItem+"="+id+";";
             stmt.execute(Str);}
        else if (score>score1){
            Str="update "+type+" set award='三' where "+idItem+"="+id+";";
           stmt.execute(Str);}
        return 1;
    }

     public  int setScore(int id,String type,int score,String tname,String suggestion) throws Exception{
        if(checkId(type, id)==0)
            return -1;
        if(checkFee(type, id)==0)
            return 0;
        Statement stmt = con.createStatement();
        String idItem;
        if(type.equals("team"))
        idItem="teamid";
        else
        idItem="englishid";
        String Str="update "+type+" set score="+score+",examname='"+tname+"',comment='"+suggestion+"',award=null where "+idItem+"="+id+";";
        stmt.execute(Str);
        if(score>score3)
        {   Str="update "+type+" set award='一' where "+idItem+"="+id+";";
               stmt.execute(Str);

        }
        else if(score>score2)
        { Str="update "+type+" set award='二' where "+idItem+"="+id+";";
             stmt.execute(Str);}
        else if (score>score1){
            Str="update "+type+" set award='三' where "+idItem+"="+id+";";
           stmt.execute(Str);}
        return 1;
    }
     public void setExamineint (int id,String first,String second,String third) throws Exception{
            Statement stmt = con.createStatement();
            String Str="update team set first='"+first+"',second='"+second+"',third='"+third+"' where teamid="+id+";";
            stmt.execute(Str);
            stmt.close();
     }
     public void passschool(String schoolname,String pass) throws Exception{
               Statement stmt = con.createStatement();
               String str;
               if(pass.equals("N"))
               str="update train set pass='Y' where schoolname='"+schoolname+"';";
               else
                     str="update train set pass='N' where schoolname='"+schoolname+"';";
                 stmt.execute(str);
                  stmt.close();
     }
     public Vector getSchool() throws Exception{
             Statement stmt = con.createStatement();
        Vector v = new Vector();
        String Str ="select * from train ";
        ResultSet rst = stmt.executeQuery(Str);
        while (rst.next()) {
            Object[] obj = new Object[3];
            obj[0] = rst.getString("schoolname");
            obj[1] = rst.getString("tel");
            obj[2]=(rst.getString("pass")==null||rst.getString("pass").equals("N"))? "N":"Y";
            v.add(obj);
        }
        rst.close();
        stmt.close();
        return v;
     }
     public void  setfee(String id,String fee,String type) throws Exception{
         String realtype=type.equals("teamfee")?"team":"englishstudent";
         String feeitem=null;
        Statement stmt = con.createStatement();
         if(realtype.equals("team"))
             feeitem = "money";
         else {
             java.util.Date now = new java.util.Date();
             java.util.Date cp = new java.util.Date(2009, 12, 12, 0, 0, 0);
             if (now.before(cp)) {
                 feeitem = "firstf";
             } else {
                 feeitem = "secondf";
             }
         }
         String str=null;
          if (fee.equals("Y")) {
             if (realtype.equals("team")) {
                 str = "update " + realtype + " set money='N' where teamid=" + id + ";";
             } else {
                 str = "update " + realtype + " set " + feeitem + "='N' where englishid=" + id + ";";
             }
         } else {
             if (realtype.equals("team")) {
                 str = "update " + realtype + " set money='Y' where teamid=" + id+";";
             } else {
                 str = "update " + realtype + " set " + feeitem + "='Y' where englishid=" + id + ";";
             }

         }
                stmt.execute(str);
                  stmt.close(); 
     }
     public void passyoung(String id,String pass)throws Exception{
              Statement stmt = con.createStatement();
               String str;
               if(pass.equals("Y"))
                    str="update young set f='N' where id="+id+";";
               else
                     str="update young set f='Y' where id="+id+";";
                 stmt.execute(str);
                  stmt.close();
     }
       public void passsummer(String id,String pass)throws Exception{
              Statement stmt = con.createStatement();
               String str;
               if(pass.equals("Y"))
                    str="update summer set f='N' where id="+id+";";
               else
                     str="update summer set f='Y' where id="+id+";";
                 stmt.execute(str);
                  stmt.close();
     }

}
