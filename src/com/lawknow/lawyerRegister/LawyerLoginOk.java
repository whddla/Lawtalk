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
		String lawSaveId = req.getParameter("lawSaveId");
		int lawyerNum = 0;
		lawyerPw = new String(Base64.getEncoder().encode(lawyerPw.getBytes()));
		lawyerMap.put("lawyerId", lawyerId);
		lawyerMap.put("lawyerPw", lawyerPw);
		System.out.println(lawyerId);
		System.out.println(lawyerPw);

		lawyerNum = lawyerDAO.loginOk(lawyerMap);
		if(lawyerNum != 0) {
			req.getSession().setAttribute("lawyerNum", lawyerNum);
			System.out.println(lawyerNum +"lawyerNum 등장");
		
			if(lawSaveId != null) {
				Cookie cookieId = new Cookie("lawyerId", lawyerId);
	            Cookie cookieSaveId = new Cookie("lawSaveId", lawSaveId);
	            
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
			actionInfo.setPath("/login.jsp");
		}
		actionInfo.setRedirect(false);
		
		return actionInfo;
	}

}
