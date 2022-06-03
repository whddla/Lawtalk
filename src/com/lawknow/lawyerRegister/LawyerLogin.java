package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;


public class LawyerLogin implements Action {

   public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
      //
      ActionInfo actionInfo = new ActionInfo();
      HttpSession session = req.getSession();
      
      //쿠키 검사
      String lawyerId = null;
      String lawyerPw = null;
      String lawSaveId = null;
      
      req.setAttribute("lawyerId", lawyerId);
      req.setAttribute("lawyerPw", lawyerPw);
      req.setAttribute("lawSaveId", lawSaveId);
      
      System.out.println(lawyerId);
      System.out.println(lawyerPw);
      System.out.println(lawSaveId);
      
      actionInfo.setPath("/login.jsp");
      actionInfo.setRedirect(false);
      
      return actionInfo;
   }

}










