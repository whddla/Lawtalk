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
		String userPw = req.getParameter("userPw");
		String autoLogin = req.getParameter("autoLogin");
		int userNum = 0;
		userPw = new String(Base64.getEncoder().encode(userPw.getBytes()));
		System.out.println("거의다왔어");
		userMap.put("userId", userId);
		userMap.put("userPw", userPw);
		System.out.println(userPw);
		userNum = userDAO.loginOk(userMap);
		
		 if(autoLogin != null) {
	            //아이디, 비밀번호, 자동로그인 체크박스를 쿠키에 저장
	            Cookie cookieId = new Cookie("userId", userId);
	            Cookie cookiePw = new Cookie("userPw", userPw);
	            Cookie cookieAutoLogin = new Cookie("autoLogin", "autoLogin");
	            
	            cookieId.setMaxAge(60*60*24*365);
	            cookiePw.setMaxAge(60*60*24*365);
	            cookieAutoLogin.setMaxAge(60*60*24*365);
	            
	            resp.addCookie(cookieId);
	            resp.addCookie(cookiePw);
	            resp.addCookie(cookieAutoLogin);
	            
	         }else {
	            //자동 로그인 해제 시 기존 쿠키 삭제
	            if(req.getHeader("Cookie") != null) {
	               Cookie[] cookies =req.getCookies();
	               for(Cookie cookie : cookies) {
	                  cookie.setMaxAge(0);
	                  resp.addCookie(cookie);
	               }
	            }
	         }
	         
	         actionInfo.setPath("/kovengerss/UserLogin.ul");
	         
	      actionInfo.setRedirect(false);
	      
	      return actionInfo;
	   }
	}


