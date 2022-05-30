package com.lawknow.lawyerRegister;

import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;

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
		int lawyerNum = 0;
		lawyerPw = new String(Base64.getEncoder().encode(lawyerPw.getBytes()));
		
		lawyerMap.put("lawyerId", lawyerId);
		lawyerMap.put("lawyerPw", lawyerPw);
		
		System.out.println(lawyerNum);
		try {
			System.out.println(lawyerMap);
//			로그인 실패시, null들어온다!
//			그래서 int로 못바꾸니까 Exception 뜸!
			lawyerNum = lawyerDAO.loginOk(lawyerMap);
			System.out.println(lawyerNum);
			//여기 밑으로 내려오는 건 로그인 성공 시에만 가능
			session.setAttribute("lawyerNum", lawyerNum);
				//세션 초기화
//			session.invalidate();
		} catch (Exception e) {
			//로그인 실패
			System.out.println("로그인 실패");
			actionInfo.setRedirect(false);
			actionInfo.setPath("/login.jsp");
		}
		actionInfo.setRedirect(false);
		actionInfo.setPath("/LawloginSuccess.jsp");
		
		return actionInfo;
	}

}
