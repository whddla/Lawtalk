/*package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserWriteDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawknow.domain.vo.UserWriteVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserWriteListOk implements Action {
//
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		
		UserWriteVO userWriteVO = new  UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		
		userWriteVO.setField(req.getParameter("field"));
		userWriteVO.setTitle(req.getParameter("title"));
		userWriteVO.setContent(req.getParameter("content"));
		
		req.setAttribute("UserwriteList", userWriteDAO.selectUserWrite());
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/userWriteList.jsp");
		
		return actionInfo;
	}

}*/
