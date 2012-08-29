/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ytu.xiao;

import javax.servlet.http.HttpServletRequest;


import org.apache.struts.action.*;
/**
 *
 * @author xiao
 */
public class AdminLoginForm extends ActionForm {

         private String account;
         private String password;
    /**
     *
     */
    public AdminLoginForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();  
        return errors;
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

}
