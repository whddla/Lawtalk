package com.lawknow.userRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.dao.UserWriteDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserMyPageOk implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		req.setCharacterEncoding("UTF-8");
	
		ActionInfo actionInfo = new ActionInfo();
		UserDAO userDAO = new UserDAO();
		
		int userNum = (int)req.getSession().getAttribute("userNum");
		
		String userName = userDAO.getUserName(userNum);
		
		String userPhoneNum1 = userDAO.UserPhonNum(userNum);
		String first = userPhoneNum1.substring(0,3);
		String middle = userPhoneNum1.substring(3,7);
		String last = userPhoneNum1.substring(7,11);
		String userPhoneNum = first +"-" + middle + "-" + last;
		
		String userId = userDAO.UserId(userNum);
		
		req.setAttribute("userId", userId);
		req.setAttribute("userPhoneNum", userPhoneNum);
		req.setAttribute("userName", userName);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/clientMypage.jsp");
		return actionInfo;
	}
}
