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
		////
		ActionInfo actionInfo = new ActionInfo();
		HttpSession session = req.getSession();
		HashMap<String, String> lawyerMap = new HashMap<>();
		LawyerDAO lawyerDAO = new LawyerDAO();
		int lawyerNum = 0;
		String lawyerId = req.getParameter("lawyerId");
		String lawyerPw = req.getParameter("lawyerPw");
		String lawSaveId = req.getParameter("lawSaveId");
		String lawyerName = null;
		String lawyerGender = null;
		String lawyerBirth = null;
		String lawyerPhoneNum = null;
		String lawyerGraduateTest = null;
		String lawyerEmail = null;
		String lawyerOffice= null;
		String lawyerOfficeNum= null;
				
		lawyerPw = new String(Base64.getEncoder().encode(lawyerPw.getBytes()));
		lawyerMap.put("lawyerId", lawyerId);
		lawyerMap.put("lawyerPw", lawyerPw);

		lawyerNum = lawyerDAO.loginOk(lawyerMap);
		lawyerName = lawyerDAO.getLawyerName(lawyerNum);
		lawyerGender = lawyerDAO.LawyerGender(lawyerNum);
		System.out.println(lawyerDAO.LawyerGender(lawyerNum));
		lawyerBirth = lawyerDAO.LawyerBirth(lawyerNum);
		lawyerPhoneNum= lawyerDAO.LawyerPhoneNum(lawyerNum);
		lawyerGraduateTest = lawyerDAO.LawyerGraduateTest(lawyerNum);
		lawyerEmail = lawyerDAO.LawyerEmail(lawyerNum);
		lawyerOffice = lawyerDAO.LawyerOffice(lawyerNum);
		lawyerOfficeNum = lawyerDAO.LawyerOfficeNum(lawyerNum);
		
		if(lawyerNum != 0) {
			req.getSession().setAttribute("lawyerNum", lawyerNum);
			System.out.println("변호사 식별번호 	: " + lawyerNum);
			req.getSession().setAttribute("lawyerName", lawyerName);
			System.out.println("변호사 이름 		: " + lawyerName);
			req.getSession().setAttribute("lawyerId", lawyerId);
			System.out.println("변호사 아이디		: " + lawyerId);
			req.getSession().setAttribute("lawyerPw", lawyerPw);
			System.out.println("변호사 비밀번호	: " + lawyerPw);
			req.getSession().setAttribute("lawyerGender", lawyerGender);
			System.out.println("변호사 성별	 	: " + lawyerGender);
			req.getSession().setAttribute("lawyerBirth", lawyerBirth);
			System.out.println("변호사 출생년도	: " + lawyerBirth);
			req.getSession().setAttribute("lawyerGraduateTest", lawyerGraduateTest);
			System.out.println("변호사 출신시험	: " + lawyerGraduateTest);
			req.getSession().setAttribute("lawyerEmail", lawyerEmail);
			System.out.println("변호사 이메일		: " + lawyerEmail);
			req.getSession().setAttribute("lawyerOffice", lawyerOffice);
			System.out.println("변호사 사무실		: " + lawyerOffice);
			req.getSession().setAttribute("lawyerOfficeNum", lawyerOfficeNum);
			System.out.println("변호사 사무실번호	: " + lawyerOfficeNum);
			
			
			actionInfo.setPath("/LawKnowMainPage2.jsp");
		}else {
			actionInfo.setPath("/login.jsp");
		}
		actionInfo.setRedirect(false);
		
		return actionInfo;
	}

}
