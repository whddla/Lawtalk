package com.lawknow.lawyerComment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.userRegister.UserJoinOk;
import com.lawyer.action.ActionInfo;

public class LawyerCommentFrontController extends HttpServlet {

	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doProcess(req, resp);
    }
    //
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doProcess(req, resp);
    }

    protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String requestURL = req.getRequestURI();
       String command = requestURL.substring(requestURL.lastIndexOf("/") + 1);
       ActionInfo actionInfo = null;
       
       if(command.equals("LawyerCommentOk.lcc")) {
          actionInfo = new LawyerCommentOk().execute(req, resp);
          System.out.println("난 프론트컨트롤러");
       } else if(command.equals("Comment.lcc")) { //변호사 글  작성
          actionInfo = new ActionInfo();
          actionInfo.setRedirect(false);
          actionInfo.setPath("/lawyerCommentSuccess.jsp");
       }else if(command.equals("LawyerCommentCountOk.lcc")) { // 변호사 답변한 글 갯수
          actionInfo = new LawyerCommentCountOk().execute(req, resp);
       } else if(command.equals("LawyerCommentUpdateOk.lcc")) { // 변호사 글 수정
          actionInfo = new LawyerCommentUpdateOk().execute(req, resp);
       }else if(command.equals("LawyerCommentDeleteOk.lcc")) { // 변호사 글 삭제
          actionInfo = new LawyerCommentDeleteOk().execute(req, resp);
       }else if(command.equals("LawyerCommentRequestNumOk.lcc")) {//사건 번호 조회
          actionInfo = new LawyerCommentRequestNumOk().execute(req, resp);
       }else if(command.equals("LawyerWriteNumOk.lcc")) {//변호사 글 번호조회 
          actionInfo = new LawyerWriteNumOk().execute(req, resp);
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
