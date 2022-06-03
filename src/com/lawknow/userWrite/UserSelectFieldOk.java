package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserWriteDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawknow.domain.vo.UserWriteVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserSelectFieldOk implements Action {
//
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
	
		UserWriteVO userWriteVO = new  UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
	
		userWriteVO.setField(Integer.parseInt(req.getParameter("field"))); // 카테고리 int타입 가져옴
		
		userWriteDAO.selectField(userWriteVO);
		
		req.setAttribute("fieldNum", userWriteDAO.selectField(userWriteVO));
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/mypage.jsp");
		
		return actionInfo;
		return null;
	}

}
