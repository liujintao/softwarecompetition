/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ytu.xiao;

/**
 *
 * @author xiao
 */
public class Team {

    private int teamid;
    private String name;
    private String money;
    private String put;
    private String title;
    private String teacher;
    private String articlename;
    private String articlecontent;
    private String articlesize;
    private String articletype;
    private String award;

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
     * @return the money
     */
    public String getMoney() {
        if (money == null) {
            return "N";
        }
        return money;
    }

    /**
     * @param money the money to set
     */
    public void setMoney(String money) {
        this.money = money;
    }

    /**
     * @return the put
     */
    public String getPut() {
        if (put == null) {
            return "N";
        }
        return put;
    }

    /**
     * @param put the put to set
     */
    public void setPut(String put) {
        this.put = put;
    }

    /**
     * @return the titleid
     */
    public String getTitle() {
        if (title == null) {
            return "尚未设置";
        }
        return title;
    }

    /**
     * @param titleid the titleid to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the teacherid
     */
    public String getTeacher() {
        if (teacher == null) {
            return "尚未设置";
        }
        return teacher;
    }

    /**
     * @param teacherid the teacherid to set
     */
    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    /**
     * @return the articlename
     */
    public String getArticlename() {
        if (articlename == null) {
            return "尚未设置";
        }
        return articlename;
    }

    /**
     * @param articlename the articlename to set
     */
    public void setArticlename(String articlename) {
        this.articlename = articlename;
    }

    /**
     * @return the articlecontent
     */
    public String getArticlecontent() {
        return articlecontent;
    }

    /**
     * @param articlecontent the articlecontent to set
     */
    public void setArticlecontent(String articlecontent) {
        this.articlecontent = articlecontent;
    }

    /**
     * @return the articlesize
     */
    public String getArticlesize() {
        return articlesize;
    }

    /**
     * @param articlesize the articlesize to set
     */
    public void setArticlesize(String articlesize) {
        this.articlesize = articlesize;
    }

    /**
     * @return the articletype
     */
    public String getArticletype() {
        return articletype;
    }

    /**
     * @param articletype the articletype to set
     */
    public void setArticletype(String articletype) {
        this.articletype = articletype;
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
