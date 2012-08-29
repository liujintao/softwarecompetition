/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author xiao
 */
public class SoftContinueForm extends org.apache.struts.action.ActionForm {
    private String train ;
    private String meeting;
    private String job;
    private String teamname;

    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        return errors;
    }

    /**
     * @return the train
     */
    public String getTrain() {
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
        return meeting;
    }

    /**
     * @param meeting the meeting to set
     */
    public void setMeeting(String meeting) {
        this.meeting = meeting;
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
     * @return the teamname
     */
    public String getTeamname() {
        return teamname;
    }

    /**
     * @param teamname the teamname to set
     */
    public void setTeamname(String teamname) {
        this.teamname = teamname;
    }
}
