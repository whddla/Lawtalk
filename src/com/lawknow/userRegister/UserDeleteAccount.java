package com.lawknow.userRegister;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
import com.user.domain.dao.UserDAO;

public class UserDeleteAccount implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8"); 
		UserDAO userDAO = new UserDAO();
		JSONObject resultJSON = new JSONObject();
		
		String userId = req.getParameter("memberId");
		resultJSON.remove("check", userDAO.checkId(userId));
		
		return null;
		
	}
}
