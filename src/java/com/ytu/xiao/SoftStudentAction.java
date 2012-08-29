/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

/**
 *
 * @author xiao
 */
public class SoftStudentAction extends Action {

    /* forward name="success" path="" */
    private final static String SUCCESS = "success";
      private final static String FALSE="false";
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        SoftContinueForm f=(SoftContinueForm)form;
        SoftStudentConfig config=new SoftStudentConfig(f.getTrain(), f.getMeeting(), f.getJob(), f.getTeamname());
       User user = (User) request.getSession().getAttribute("user");
        int t = config.checkTeam(f.getTeamname());
        config.Config(user.getAccount(),t);
            return mapping.findForward(SUCCESS);
    }
}
