package com.lawknow.lawyerRegister;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.userRegister.UserDeleteAccountOk;
import com.lawknow.userRegister.UserEmailUpdateOk;
import com.lawknow.userRegister.UserPwCheckOk;
import com.lawyer.action.ActionInfo;

	public class LawyerLoginFrontController extends HttpServlet{
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
			
			if(command.equals("JoinOk.ll")) {
				actionInfo = new LawyerJoinOk().execute(req, resp);
				
			} else if(command.equals("join.ll")) {
				actionInfo = new ActionInfo();
				actionInfo.setRedirect(true);
				actionInfo.setPath(req.getContextPath() + "/lawyer_signup.jsp");
				
			} else if(command.equals("LawyerCheckIdOk.ll")) {
				actionInfo = new LawyerCheckIdOk().execute(req, resp);
			} else if(command.equals("LawyerLoginOk.ll")) {
				actionInfo = new LawyerLoginOk().execute(req, resp);
			} else if(command.equals("LawyerLogin.ll")){
				actionInfo = new LawyerLogin().execute(req, resp);
			} else if(command.equals("LawyerCheckPhoneOk.ll")) {
				new LawyerCheckPhoneOk().execute(req, resp);
			} else if(command.equals("LawyerPwChangeOk.ll")) {
				actionInfo = new LawyerPwChangeOk().execute(req, resp);
			} else if(command.equals("LawyerPwChange.ll")) {
				actionInfo = new ActionInfo();
				actionInfo.setRedirect(false);
				actionInfo.setPath("/pwChange2.jsp");
			} else if(command.equals("LawyerDeleteAccountOk.ll")){
				actionInfo = new LawyerDeleteAccountOk().execute(req, resp);
			} else if(command.equals("LawyerDeleteAccount.ll")) {
				actionInfo = new ActionInfo();
				actionInfo.setRedirect(false);
				actionInfo.setPath("/lawyerWithdrawal.jsp");
			} else if(command.equals("LawyerPwCheckOk.ll")) {
				new LawyerPwCheckOk().execute(req, resp);
			} else if(command.equals("LawyerEmailUpdateOk.ll")) {
				actionInfo = new LawyerEmailUpdateOk().execute(req, resp);
			} else if(command.equals("LawyerEmailUpdate.ll")) {
				actionInfo = new ActionInfo();
				actionInfo.setRedirect(false);
				actionInfo.setPath("/privacyPage2.jsp");
			} else if(command.equals("LawyerPhoneNumPushOk.ll")) {
				new LawyerPhoneNumPushOk().execute(req, resp);
			} else if(command.equals("LawyerPhonNumUpdateOk.ll")) {
				actionInfo = new LawyerPhonNumUpdateOk().execute(req, resp);
			} else if(command.equals("LawyerPhonNumUpdate.ll")) {
				actionInfo = new ActionInfo();
				actionInfo.setRedirect(false);
				actionInfo.setPath("/privacyPage2.jsp"); 
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























