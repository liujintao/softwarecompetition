/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao;

/**
 *
 * @author xiao
 */
public class SoftStudent {
    private String name;
    private String account;
    private String train;
    private String meeting;
    private String email;
    private String tel;
    private String info;
    private String password;
    private int teamid;
    private String job;

    /**
     * @return the name
     */
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
     * @return the train
     */
    public String getTrain() {
       if(train==null)
            return "尚未设置";
        else
            return train;
    }

    /**
     * @param train the train to set
     */
    public void setTrain(String train) {
        this.train = train;
    }

    /**
     * @return the meeting
     */
    public String getMeeting() {
        if(meeting==null)
            return "尚未设置";
        else
            return meeting;
    }

    /**
     * @param meeting the meeting to set
     */
    public void setMeeting(String meeting) {
        this.meeting = meeting;
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
        this.password = password;
    }




    /**
     * @return the job
     */
    public String getJob() {
        return job;
    }

    /**
     * @param job the job to set
     */
    public void setJob(String job) {
        this.job = job;
    }

    /**
     * @return the teamid
     */
    public int getTeamid() {
        return teamid;
    }

    /**
     * @param teamid the teamid to set
     */
    public void setTeamid(int teamid) {
        this.teamid = teamid;
    }



}
