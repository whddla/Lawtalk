package com.lawknow.userRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
public class UserEmailUpdateOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new  UserDAO();
		
		int userNum = (int)session.getAttribute("userNum");
		
		userVO.setUserEmail(req.getParameter("email"));
		userVO.setUserNum(userNum);
		
		
		boolean emailCheck = userDAO.UserEmailUpdate(userVO);
		
		req.setAttribute("emailCheck", emailCheck);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/privacyPage.jsp");
		
		return actionInfo;
	}
}
