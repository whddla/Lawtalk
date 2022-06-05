package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawknow.domain.vo.LawyerVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerEmailUpdateOk implements Action {
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//
		req.setCharacterEncoding("UTF-8");
		String random = RandomStringUtils.random(5,48,122,true,true);		
		
		
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		LawyerVO lawyerVO = new LawyerVO();
		LawyerDAO lawyerDAO = new  LawyerDAO();
		
		int lawyerNum = (int)session.getAttribute("lawyerNum");
		String lawyerId = lawyerDAO.LawyerId(lawyerNum);
		String userEmail = lawyerDAO.LawyerEmail(lawyerNum);
		String newEmail = req.getParameter("email");
		String randomId = lawyerId + random;
		System.out.println(randomId);		
		
		
		lawyerVO.setLawyerEmail(newEmail);
		lawyerVO.setLawyerNum(lawyerNum);
		boolean emailCheck = lawyerDAO.LawyerEmailUpdate(lawyerVO);
		req.setAttribute("emailCheck", emailCheck);
		req.setAttribute("randomId", randomId);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/privacyPage2.jsp");
		
		return actionInfo;
	
	}
}
