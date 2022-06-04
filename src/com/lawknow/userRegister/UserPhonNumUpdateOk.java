package com.lawknow.userRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserPhonNumUpdateOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		HttpSession session = req.getSession();
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		int userNum = (int)req.getSession().getAttribute("userNum");
		int newPhoneNumCheck = Integer.parseInt(req.getParameter("newPhoneNum"));
		int userPhoneNum = Integer.parseInt((String) session.getAttribute("userPhoneNum"));
		System.out.println(userPhoneNum == newPhoneNumCheck);
		
		if(userPhoneNum != newPhoneNumCheck) {
			String newPhoneNum = req.getParameter("newPhoneNum");
			userVO.setUserNum(userNum);
			userVO.setUserPhoneNum(newPhoneNum);
			boolean phoneNumCheck = userDAO.UserPhoneChange(userVO);
			req.setAttribute("phoneNumCheck", phoneNumCheck);
		}else {
			req.setAttribute("phoneError", true);
		}
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/privacyPage.jsp");
		
		return actionInfo;
	}
}
