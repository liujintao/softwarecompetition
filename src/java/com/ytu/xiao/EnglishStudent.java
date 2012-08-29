/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao;

/**
 *
 * @author xiao
 */
public class EnglishStudent {
    private String name;
    private String account;
    private String train;
    private String meeting;
    private String first;
    private String firstf;
    private String afinal;
    private String afinalf;
    private String email;
    private String tel;
    private String info;
    private String password;
    private String award;
    

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
     * @return the first
     */
    public String getFirst() {
        if(first==null)
            return "比赛尚未结束";
        return first;
    }

    /**
     * @param first the first to set
     */
    public void setFirst(String first) {

        this.first = first;
    }

    /**
     * @return the firstf
     */
    public String getFirstf() {
       if(firstf==null||firstf.equals("N"))
           return "N";
       else
           return "Y";
    }

    /**
     * @param firstf the firstf to set
     */
    public void setFirstf(String firstf) {
        this.firstf = firstf;
    }

    /**
     * @return the afinal
     */
    public String getAfinal() {
        if(afinal==null)
            return "比赛尚未结束";
        return afinal;
    }

    /**
     * @param afinal the afinal to set
     */
    public void setAfinal(String afinal) {
        this.afinal = afinal;
    }

    /**
     * @return the afinalf
     */
    public String getAfinalf() {
        if (afinalf==null||afinalf.equals("N"))
            return "N";
        return "Y";
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @return the tel
     */
    public String getTel() {
        return tel;
    }

    /**
     * @return the info
     */
    public String getInfo() {
        return info;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @param tel the tel to set
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    /**
     * @param info the info to set
     */
    public void setInfo(String info) {
        this.info = info;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @param afinalf the afinalf to set
     */
    public void setAfinalf(String afinalf) {
        this.afinalf = afinalf;
    }

    /**
     * @return the award
     */
    public String getAward() {
        return award;
    }

    /**
     * @param award the award to set
     */
    public void setAward(String award) {
        this.award = award;
    }

}
