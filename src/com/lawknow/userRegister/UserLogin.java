package com.lawknow.userRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;


public class UserLogin implements Action {

   public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
      
      ActionInfo actionInfo = new ActionInfo();
      HttpSession session = req.getSession();
      
      //쿠키 검사
      String userId = null;
      String userPw = null;
      String saveId = null;
      
      
      req.setAttribute("userId", userId);
      req.setAttribute("userPw", userPw);
      req.setAttribute("saveId", saveId);
      
      System.out.println(userId);
      System.out.println(userPw);
      System.out.println(saveId);
      
      actionInfo.setRedirect(false);
      actionInfo.setPath("/login.jsp");
      
      return actionInfo;
   }

}




















