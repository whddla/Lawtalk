package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
       
       if(command.equals("LawyerJoinOk.lrfc")) {
          actionInfo = new LawyerJoinOk().execute(req, resp);
       } else if(command.equals("LawyerJoin.lrfc")) {//로그인 창
          actionInfo = new ActionInfo();
          actionInfo.setRedirect(true);
          actionInfo.setPath(req.getContextPath() + "/lawyer_signup.jsp");
       }else if(command.equals("LawyerDeleteAccountOk.lrfc")) { // 계정삭제
          actionInfo = new LawyerDeleteAccountOk().execute(req, resp);
       }else if(command.equals("LawyerUpdateAccountOk.lrfc")) { // 계정 업데이트
          actionInfo = new LawyerUpdateAccountOk().execute(req, resp);
       }else if(command.equals("LawyerLoginCheck.lrfc")) { // 로그인 체크
          actionInfo = new ActionInfo();
           actionInfo.setRedirect(true);
           actionInfo.setPath(req.getContextPath() + "/lawyer_signup.jsp");
       }else if(command.equals("LawyerCheckIdOk.lrfc")){ //아이디 중복 조회
          actionInfo = new LawyerCheckIdOk().execute(req, resp);
       }else if(command.equals("LawyerGetUserInfoOk.lrfc")){ //변호사 정보 가져오기
          actionInfo = new LawyerGetUserInfoOk().execute(req, resp);
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
