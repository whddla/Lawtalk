package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;


public class LawyerLogin implements Action {

   public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
      
      ActionInfo actionInfo = new ActionInfo();
      
      //쿠키 검사
      String lawyerId = null;
      String lawyerPw = null;
      String lawSaveId = null;
      
      String cookieCheck = req.getHeader("Cookie");
      
      
      if(cookieCheck != null) {
         Cookie[] cookies = req.getCookies();
         for(Cookie cookie : cookies) {
            if(cookie.getName().equals("lawyerId")) {
            	lawyerId = cookie.getValue();
               
            } else if(cookie.getName().equals("lawyerPw")) {
            	lawyerPw = cookie.getValue();
               
            }else if(cookie.getName().equals("lawSaveId")) {
            	lawSaveId = cookie.getValue();
               
            }
         }
      }
      
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










