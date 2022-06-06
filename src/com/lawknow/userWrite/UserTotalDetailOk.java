package com.lawknow.userWrite;
//
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.FileDAO;
import com.lawknow.domain.dao.UserWriteDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserTotalDetailOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		
		int userWriteNum = Integer.parseInt(req.getParameter("userWriteNum"));
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		FileDAO fileDAO = new FileDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		req.setAttribute("userWrite", userWriteDAO.selectDetail(userWriteNum));
		req.setAttribute("files", fileDAO.select(userWriteNum));
		
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/answer_page_each.jsp");
		
		return actionInfo;
		
	}

}
