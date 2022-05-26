package com.lawknow.userRegister;

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
	//나는 자고싶다 제발..
		req.setCharacterEncoding("UTF-8");

		ActionInfo actionInfo = new ActionInfo();
		
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		userVO.setUserId(req.getParameter("userId"));
		userVO.setUserName(req.getParameter("userName"));
		userVO.setUserEmail(req.getParameter("userEmail"));
		userVO.setUserPw(req.getParameter("userPw"));
		userVO.setUserPhoneNum(req.getParameter("userPhoneNum"));
		userVO.setUserGender(req.getParameter("userGender"));
		userVO.setUserKakaoEmail(req.getParameter("userKakaoEmail"));
		userVO.setUserFacebookEmail(req.getParameter("userFacebookEmail"));
		
		userDAO.join(userVO);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/LawKnowMainPage.jsp");
		
		
		return actionInfo;
	}
}
