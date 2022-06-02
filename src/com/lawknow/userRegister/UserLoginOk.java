package com.lawknow.userRegister;

import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.UserDAO;
import com.lawyer.action.ActionInfo;

public class UserLoginOk {
	
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		HttpSession session = req.getSession();
		HashMap<String, String> userMap = new HashMap<>();
		UserDAO userDAO = new UserDAO();
		String userId = req.getParameter("userId");
		String userPw = (new String(Base64.getEncoder().encode(req.getParameter("userPw").getBytes())));
		String saveId= req.getParameter("saveId");
		int userNum = 0;
		String userName = null;
		userMap.put("userId", userId);
		userMap.put("userPw", userPw);
		System.out.println("아이디: "+userId);
		System.out.println("비번: "+userPw);
		
		userNum = userDAO.loginOk(userMap);
		userName = userDAO.getUserName(userNum);
		if(userNum != 0) {
			req.getSession().setAttribute("userNum", userNum);
			req.getSession().setAttribute("userName", userName);
			req.getSession().setAttribute("userPw", userPw);
			System.out.println("의뢰인 식별번호 : " + userNum);
			System.out.println("의뢰인 이름 : " + userName);
			System.out.println("의뢰인 비번 : " + userPw);
		
			actionInfo.setPath("/LawKnowMainPage.jsp");
		
		}else {
			actionInfo.setPath("/UserLogin.ul");
		}
		actionInfo.setRedirect(false);
		
		return actionInfo;
	}

}
