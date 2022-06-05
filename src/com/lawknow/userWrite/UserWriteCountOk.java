package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserWriteDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserWriteCountOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		UserWriteDAO userWriteDAO = new UserWriteDAO(); 
		
		int userNum = (int)req.getSession().getAttribute("userNum");
		int userWriteCount = userWriteDAO.getMyCount(userNum);
		
		req.setAttribute("userWriteCount", userWriteCount);
				
		actionInfo.setRedirect(false);
		actionInfo.setPath("/mypage.jsp");
	
		return actionInfo;
	}
}
