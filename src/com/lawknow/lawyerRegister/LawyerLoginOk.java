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
		String lawyerName = null;
		lawyerPw = new String(Base64.getEncoder().encode(lawyerPw.getBytes()));
		lawyerMap.put("lawyerId", lawyerId);
		lawyerMap.put("lawyerPw", lawyerPw);
		System.out.println(lawyerId);
		System.out.println(lawyerPw);

		lawyerNum = lawyerDAO.loginOk(lawyerMap);
		lawyerName = lawyerDAO.getLawyerName(lawyerNum);
		if(lawyerNum != 0) {
			req.getSession().setAttribute("lawyerNum", lawyerNum);
			req.getSession().setAttribute("lawyerName", lawyerName);
			req.getSession().setAttribute("lawyerPw", lawyerPw);
			System.out.println("변호사 식별번호 : "+lawyerNum );
			System.out.println("변호사 이름 : " + lawyerName);
			System.out.println("변호사 이름 : " + lawyerPw);
			
			actionInfo.setPath("/LawKnowMainPage.jsp");
		}else {
			actionInfo.setPath("/login.jsp");
		}
		actionInfo.setRedirect(false);
		
		return actionInfo;
	}

}
