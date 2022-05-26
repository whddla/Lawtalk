package com.lawknow.userRegister;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserDeleteAccount implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8"); 
		
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		JSONObject resultJSON = new JSONObject();
		
		resultJSON.remove("click", userDAO.checkId("userId"));
		
		return null;
		
	}
}
