package com.lawknow.userRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserUpdateAccountOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		userVO.getUserNum();
		
		userDAO.updateAccount(userVO);
		
		actionInfo.setRedirect(false);
		/*업데이트*/
		actionInfo.setPath("/LawKnowMainPage.jsp");
		
		return actionInfo;
	
	}
	
}
