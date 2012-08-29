/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao.regist;

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
public class SummerAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private final static String SUCCESS = "success";
    
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
       SummerForm f=(SummerForm)form;
       RegistConnection service=new RegistConnection();
       service.sumregist(f.getName(), f.getInfo(), f.getTel(), f.getEmail());
        return mapping.findForward(SUCCESS);
    }
}
