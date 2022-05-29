package com.lawknow.userReview;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawyer.action.ActionInfo;

public class UserReviewFrontController extends HttpServlet {

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
       
       if(command.equals("UserReviewOk.urfc")) {
          actionInfo = new UserReviewOk().execute(req, resp);
       } else if(command.equals("UserReviewWrite.urfc")) { //후기 작성
          actionInfo = new ActionInfo();
          actionInfo.setRedirect(true);
          actionInfo.setPath(req.getContextPath() + "/join.jsp");
       }else if(command.equals("UserReivewUpdateOk.urfc")) { //후기 수정
          actionInfo = new UserReviewUpdateOk().execute(req, resp);
       }else if(command.equals("UserReivewDeleteOk.urfc")) { // 후기 삭제 
          actionInfo = new UserReviewDeleteOk().execute(req, resp);
       }else if(command.equals("UserRequestNumOk.urfc")) { //사건번호가져오기
          actionInfo = new UserRequestNumOk().execute(req, resp);
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
