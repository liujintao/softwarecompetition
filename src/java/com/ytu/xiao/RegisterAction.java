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
public class RegisterAction extends Action {

    /* forward name="success" path="" */
    private final static String SUCCESS = "success";
    private final static String SUCCESS2= "success2";
        private final static String  FALSE="false";
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
        RegisterForm f = (RegisterForm) form;
        String type = f.getType();
        AddUserBean service = new AddUserBean();
        LoginBean service2=new LoginBean();
        int id;
        if(service.IsAccountExisted(f.getAccount(), f.getType())==1)
        {
            request.setAttribute("error", "用户名已经存在");
            return mapping.findForward("Accountexisted");
        }
        if (type.equals("englishstudent")) {
            EnglishStudent euser = new EnglishStudent();
            euser.setName(f.getName());
            euser.setAccount(f.getAccount());
            euser.setInfo(f.getInfo());
            euser.setEmail(f.getEmail());
            euser.setTel(f.getTel());
            euser.setPassword(f.getPassword());
            service.addUser(euser);
            id=service2.login(f.getAccount(), f.getPassword(), f.getType());
            User user=new User();
            user.setAccount(f.getAccount());
           user.setType(f.getType());
            user.setId(id);
              request.getSession().setAttribute("login", "yes");
           request.getSession().setAttribute("user", user);
            return mapping.findForward(SUCCESS);
        }

          else if(type.equals("softstudent"))
          {
              SoftStudent suser= new SoftStudent();
              suser.setName(f.getName());
             suser.setAccount(f.getAccount());
              suser.setInfo(f.getInfo());
              suser.setEmail(f.getEmail());
              suser.setTel(f.getTel());
              suser.setPassword(f.getPassword());
              service.addUser(suser);
              id=service2.login(f.getAccount(), f.getPassword(), f.getType());
               User user=new User();
                user.setAccount(f.getAccount());
                user.setType(f.getType());
                user.setId(id);
                  request.getSession().setAttribute("login", "yes");
                request.getSession().setAttribute("user", user);
              return mapping.findForward(SUCCESS2);
          }
          else if(type.equals("teacher1")){
               Teacher suser = new Teacher();
               suser.setName(f.getName());
              suser.setAccount(f.getAccount());
              suser.setInfo(f.getInfo());
             suser.setEmail(f.getEmail());
              suser.setTel(f.getTel());
              suser.setPassword(f.getPassword());
              service.addUser(suser,type);
              id=service2.login(f.getAccount(), f.getPassword(), f.getType());
                User user=new User();
                user.setAccount(f.getAccount());
                user.setType(f.getType());
                user.setId(id);
                  request.getSession().setAttribute("login", "yes");
                request.getSession().setAttribute("user", user);
              return mapping.findForward(SUCCESS);
          }
          else if(type.equals("teacher2")){
               Teacher suser = new Teacher();
               suser.setName(f.getName());
              suser.setAccount(f.getAccount());
              suser.setInfo(f.getInfo());
              suser.setEmail(f.getEmail());
              suser.setTel(f.getTel());
              suser.setPassword(f.getPassword());
              service.addUser(suser,type);
              id=service2.login(f.getAccount(), f.getPassword(), f.getType());
               User user=new User();
                user.setAccount(f.getAccount());
                user.setType(f.getType());
                user.setId(id);
                  request.getSession().setAttribute("login", "yes");
                request.getSession().setAttribute("user", user);
              return mapping.findForward(SUCCESS);
          }
           return mapping.findForward(FALSE);
    }
}
