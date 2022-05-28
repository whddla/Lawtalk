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
		String userPw = req.getParameter("userPw");
		int userNum = 0;
		userPw = new String(Base64.getEncoder().encode(userPw.getBytes()));
		
		userMap.put("userId", userId);
		userMap.put("userPw", userPw);
		
		try {
			System.out.println(userMap);
//			로그인 실패시, null들어온다!
//			그래서 int로 못바꾸니까 Exception 뜸!
			userNum = userDAO.loginOk(userMap);
			System.out.println(userNum);
			//여기 밑으로 내려오는 건 로그인 성공 시에만 가능
			session.setAttribute("userNum", userNum);
				//세션 초기화
//			session.invalidate();
		} catch (Exception e) {
			//로그인 실패
			System.out.println("로그인 실패");
			actionInfo.setRedirect(false);
			actionInfo.setPath("/login.jsp");
		}
		actionInfo.setRedirect(false);
		actionInfo.setPath("/loginSuccess.jsp");
		
		return actionInfo;
	}

}
