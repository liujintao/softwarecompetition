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
public class AdminLoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private final static String SUCCESS = "success";
     private final static String FALSE = "false";

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
        AdminLoginForm f= (AdminLoginForm)form;
        DatabaseConnection con=new DatabaseConnection();
        Worker user=new Worker();
        user.setAccount(f.getAccount());
        user.setPassword(f.getPassword());
        int t=0;
        try{

            t=con.login(user);
            if (t!=0){
                 request.getSession().setAttribute("user", f.getAccount());
             
                  return mapping.findForward(SUCCESS);
            }
                request.getSession().setAttribute("adminerror", "输入有错");
                return mapping.findForward(FALSE);
        }
        catch(Exception e){
               e.printStackTrace();
                request.getSession().setAttribute("adminerror", "输入有错");
               return mapping.findForward("false");
        }
    }
}
