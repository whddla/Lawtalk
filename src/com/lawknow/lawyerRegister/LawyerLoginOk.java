package com.lawknow.lawyerRegister;

import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawyer.action.ActionInfo;

public class LawyerLoginOk {
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		HttpSession session = req.getSession();
		HashMap<String, String> lawyerMap = new HashMap<>();
		LawyerDAO lawyerDAO = new LawyerDAO();
		String lawyerId = req.getParameter("lawyerId");
		String lawyerPw = req.getParameter("lawyerPw");
		String lawAutoLogin = req.getParameter("lawAutoLogin");
		int lawyerNum = 0;
		lawyerPw = new String(Base64.getEncoder().encode(lawyerPw.getBytes()));
		lawyerMap.put("lawyerId", lawyerId);
		lawyerMap.put("lawyerPw", lawyerPw);
		System.out.println(lawyerId);
		System.out.println(lawyerPw);

		lawyerNum = lawyerDAO.loginOk(lawyerMap);
		System.out.println(lawyerNum);
		if(lawyerNum != 0) {
			session.setAttribute("lawyerNum", lawyerNum);
		
			if(lawAutoLogin != null) {
	            //아이디, 비밀번호, 자동로그인 체크박스를 쿠키에 저장
	            Cookie cookieId = new Cookie("lawyerId", lawyerId);
	            Cookie cookiePw = new Cookie("lawyerPw", lawyerPw);
	            Cookie cookieLawAutoLogin = new Cookie("lawAutoLogin", "lawAutoLogin");
	            
	            cookieId.setMaxAge(60*60*24*365);
	            cookiePw.setMaxAge(60*60*24*365);
	            cookieLawAutoLogin.setMaxAge(60*60*24*365);
	            
	            resp.addCookie(cookieId);
	            resp.addCookie(cookiePw);
	            resp.addCookie(cookieLawAutoLogin);
	            System.out.println(cookieId);
	            System.out.println(cookiePw);
	            System.out.println(cookieLawAutoLogin);
	            
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
			actionInfo.setPath("/LawloginSuccess.jsp");
		}else {
			actionInfo.setPath("/login.jsp");
		}
		actionInfo.setRedirect(false);
		
		return actionInfo;
	}

}
