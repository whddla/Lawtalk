package com.lawknow;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
import com.user.domain.dao.UserDAO;
import com.user.domain.vo.UserVO;

public class UserJoinOk implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	
		req.setCharacterEncoding("UTF-8");

		ActionInfo actionInfo = new ActionInfo();
		
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		
		
		
		
		
		return actionInfo;
	}
}
