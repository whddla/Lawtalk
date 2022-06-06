package com.lawknow.userRegister;
//
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
public class UserEmailUpdateOk implements Action{
	//
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		String random = RandomStringUtils.random(5,48,122,true,true);
		
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new  UserDAO();
		
		int userNum = (int)session.getAttribute("userNum");
		String userId = userDAO.UserId(userNum);
		String userEmail = (String)req.getSession().getAttribute("userEmail");
		String newEmail = req.getParameter("email");
		
		String randomId = userId + random;
		
		if(!userEmail.equals(newEmail)) {
			System.out.println("나 들어옴~1");
			userVO.setUserEmail(newEmail);
			userVO.setUserNum(userNum);
			boolean emailCheck = userDAO.UserEmailUpdate(userVO);
			req.setAttribute("emailCheck", emailCheck);
		}else {
			System.out.println("나 들어옴~2");
			req.setAttribute("emailchk", true);
		}
		
		req.setAttribute("randomId", randomId);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/privacyPage.jsp");
		
		return actionInfo;
	}
}
