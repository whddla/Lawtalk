package com.lawknow.userRegister;

import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.Cookie;
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
		userMap.put("userId", userId);
		userMap.put("userPw", userPw);
		System.out.println("아이디: "+userId);
		System.out.println("비번: "+userPw);
		
		userNum = userDAO.loginOk(userMap);
		if(userNum != 0) {
			req.getSession().setAttribute("userNum", userNum);
			System.out.println(userNum +"userNum 등장");
		
			if(saveId != null) {
				Cookie cookieId = new Cookie("userId", userId);
	            Cookie cookieSaveId = new Cookie("saveId", "saveId");
	            
	            //유통 기한을 1년으로 설정
	            cookieId.setMaxAge(60*60*24*365);
	            cookieSaveId.setMaxAge(60*60*24*365);
	            
	            //응답 객체에 생성한 쿠키를 넣어준다.
	            resp.addCookie(cookieId);
	            resp.addCookie(cookieSaveId);
	            System.out.println(cookieId +"쿠키 아이디 등장");
	            System.out.println(cookieSaveId+"쿠키 SaveId등장");
	         }else {
	        	  //아이디 저장이 체크되지 않았을 경우
	             if(req.getHeader("Cookie") != null) {
	                //쿠키를 삭제해준다.
	                Cookie[] cookies =req.getCookies();
	                for(Cookie cookie : cookies) {
	                   cookie.setMaxAge(0);
	                   resp.addCookie(cookie);
	                }
	             }
	         }
			actionInfo.setPath("/LawKnowMainPage.jsp");
		}else {
			actionInfo.setPath("/UserLogin.ul");
		}
		actionInfo.setRedirect(false);
		
		return actionInfo;
	}

}
