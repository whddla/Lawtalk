package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserWriteDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserWriteUpdate implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {req.setCharacterEncoding("UTF-8");
	
	int page = Integer.parseInt(req.getParameter("page"));
	int userWriteNum = Integer.parseInt(req.getParameter("userWriteNum"));
	ActionInfo actionInfo = new ActionInfo();
	
	UserWriteDAO userWriteDAO = new UserWriteDAO();
	
	// 회원의 번호로 게시글의 정보 뿐만 아니라 회원의 아이디까지 가져와주는 쿼리 실행
	req.setAttribute("userWrite", userWriteDAO.selectDetail(userWriteNum));
	req.setAttribute("page", page);
	
	actionInfo.setRedirect(false);
	actionInfo.setPath("/writeUpdate.jsp");
	
	return actionInfo;
}
}
