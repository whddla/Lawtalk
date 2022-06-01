package com.lawknow.userRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserPwCheckOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new  ActionInfo();
		HttpSession session = req.getSession();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		int userNum = (int)session.getAttribute("userNum");
		
		userVO.setUserNum(userNum);
		
		boolean pwCheck = userDAO.UserPwcheck(userVO);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/pwChnage.jsp");
		
		return null;
	}
}
