package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.LawyerJoinOk;
import com.lawknow.UserJoinOk;
import com.lawyer.action.ActionInfo;

public class LawyerRegisterFrontController extends HttpServlet {

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
       
       if(command.equals("LawyerJoinOk.me")) {
    	   actionInfo = new UserJoinOk().execute(req, resp);
       } else if(command.equals("LawyerJoin.me")) {
          actionInfo = new ActionInfo();
          actionInfo.setRedirect(true);
          actionInfo.setPath(req.getContextPath() + "/join.jsp");
       }else if(command.equals("LawyercheckId.me")) {
    	   actionInfo = new ActionInfo();
           actionInfo.setRedirect(true); // 리다이렉트 방법으로 전송했을때는 req객체가 사라 질 수 있으니  eq.getContextPath()를 경로앞에쏴준다
           actionInfo.setPath(req.getContextPath() + "/join.jsp");
       }else if(command.equals("LawyerUpdateAccount.me")) {
          
       }else if(command.equals("LawyerLoginCheck.me")) {
          
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
