package com.lawknow.userRegister;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserFindIdOk implements Action{
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		HashMap<String, String> userMap = new HashMap<>();
		UserDAO userDAO = new UserDAO();
		String userEmail= req.getParameter("userEmail");
		String userPhoneNum = req.getParameter("userPhoneNum");
		
		userMap.put("userEmail", userEmail);
		userMap.put("userPhoneNum", userPhoneNum);
		String userId = userDAO.UserFindId(userMap);
		System.out.println(userId);
		
		if(userId != null) {
			req.getSession().setAttribute("userId", userId);
			System.out.println(userId);
			actionInfo.setPath("/findId.jsp");
			
		}else {
			actionInfo.setPath("/find_idpw.jsp");
		}
		actionInfo.setPath("/findId.jsp");
		actionInfo.setRedirect(false);
		return actionInfo;
	}
}
