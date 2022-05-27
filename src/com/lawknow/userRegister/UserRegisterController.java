package com.lawknow.userRegister;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawyer.action.ActionInfo;

public class UserRegisterController extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doProcess(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doProcess(req, resp);
    }

    protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String requestURL = req.getRequestURI();
       String command = requestURL.substring(requestURL.lastIndexOf("/") + 1);
       ActionInfo actionInfo = null;
       
       if(command.equals("UserJoinOk.urc")) {
    	   actionInfo = new UserJoinOk().execute(req, resp);
       }else if(command.equals("UserJoin.urc")) {
          actionInfo = new ActionInfo();
          actionInfo.setRedirect(true);
          actionInfo.setPath(req.getContextPath() + "/client_login.jsp");
       }else if(command.equals("UserDeleteAccountOk.urc")) {
    	   actionInfo = new UserDeleteAccountOk().execute(req, resp);
       }else if(command.equals("UserCheckId.urc")) {
    	   actionInfo = new UserCheckIdOk().execute(req, resp);
       }else if(command.equals("UserUpdateAccount.urc")) {//회원 정보 조회
    	   actionInfo = new ActionInfo();
           actionInfo.setRedirect(true);
           actionInfo.setPath(req.getContextPath() + "/privacyPage.jsp");
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
