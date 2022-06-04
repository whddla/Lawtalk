package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.UserDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserWrite  implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		UserDAO userDAO = new UserDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		String userId = userDAO.UserId((Integer)session.getAttribute("userNum"));
		
		req.setAttribute("userId", userId);
		req.setAttribute("page", req.getParameter("page"));
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/write.jsp");
		
		
		return actionInfo;
	}

}
