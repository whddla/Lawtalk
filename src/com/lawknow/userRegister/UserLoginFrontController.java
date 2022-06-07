package com.lawknow.userRegister;
//
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawyer.action.ActionInfo;

public class UserLoginFrontController extends HttpServlet{
	//
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
		System.out.println(command);
		
		if(command.equals("JoinOk.ul")) {
			actionInfo = new UserJoinOk().execute(req, resp);
			
		} else if(command.equals("join.ul")) {
			actionInfo = new UserJoin().execute(req, resp);
		} else if(command.equals("UserMain.ul")) {
			actionInfo = new UserMain().execute(req, resp);
		} else if(command.equals("UserCheckIdOk.ul")) {
			new UserCheckIdOk().execute(req, resp);
		} else if(command.equals("UserLoginOk.ul")) {
			actionInfo = new UserLoginOk().execute(req, resp);
		} else if(command.equals("UserLogin.ul")) {
			actionInfo = new UserLogin().execute(req, resp);
		} else if(command.equals("UserCheckPhoneOk.ul")) {
			new UserCheckPhoneOk().execute(req, resp);
		} else if(command.equals("UserFindIdOk.ul")) {
			actionInfo = new UserFindIdOk().execute(req, resp);
		} else if(command.equals("UserFindPwOk.ul")) {
			actionInfo = new UserFindPwOk().execute(req, resp);
		} else if(command.equals("PwChange.ul")){
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(false);
			actionInfo.setPath("/pwChange.jsp");
		} else if(command.equals("PwChangeOk.ul")){
			actionInfo = new PwChangeOk().execute(req, resp);
		} else if(command.equals("UserDeleteAccount.ul")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(false);
			actionInfo.setPath("/Clientwithdrawal.jsp");
		} else if(command.equals("UserDeleteAccountOk.ul")){
			actionInfo = new UserDeleteAccountOk().execute(req, resp);
		} else if(command.equals("UserPwCheckOk.ul")) {
			new UserPwCheckOk().execute(req, resp);
		} else if(command.equals("UserEmailUpdateOk.ul")) {
			actionInfo = new UserEmailUpdateOk().execute(req, resp);
		} else if(command.equals("UserEmailUpdate.ul")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(false);
			actionInfo.setPath("/privacyPage.jsp");
		} else if(command.equals("UserPhoneNumPushOk.ul")) {
			new UserPhoneNumPushOk().execute(req, resp);
		} else if(command.equals("UserPhonNumUpdateOk.ul")) {
			actionInfo = new UserPhonNumUpdateOk().execute(req, resp);
		} else if(command.equals("UserPhonNumUpdate.ul")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(false);
			actionInfo.setPath("/privacyPage.jsp"); 
		} else if(command.equals("UserMyPageOk.ul")) {
			actionInfo = new UserMyPageOk().execute(req, resp);
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























