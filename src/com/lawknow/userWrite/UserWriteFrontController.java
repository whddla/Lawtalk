package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.LawyerJoinOk;
import com.lawknow.UserJoinOk;
import com.lawyer.action.ActionInfo;

public class UserWriteFrontController {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doProcess(req, resp);
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doProcess(req, resp);
    }

    protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String requestURL = req.getRequestURI();
       String command = requestURL.substring(requestURL.lastIndexOf("/") + 1);
       ActionInfo actionInfo = null;
       
       if(command.equals("UserWrite.uwfc")) {
    	   actionInfo = new ActionInfo();
           actionInfo.setRedirect(true);
           actionInfo.setPath(req.getContextPath() + "/write.jsp");
       } else if(command.equals("UserJoin.uwfc")) {
          actionInfo = new ActionInfo();
          actionInfo.setRedirect(true);
          actionInfo.setPath(req.getContextPath() + "/join.jsp");
       }
       else {
          // 404 일 때 출력할 에러 페이지 경로 작성
       }
       
       
       if(actionInfo != null) {
          if(actionInfo.isRedirect()) {
             resp.sendRedirect(actionInfo.getPath());
          }else {
             RequestDispatcher dispatcher = req.getRequestDispatcher(actionInfo.getPath());
             dispatcher.forward(req, resp);
          }
       }
       
    }
}
