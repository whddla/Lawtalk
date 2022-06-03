package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawknow.domain.vo.LawyerVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerEmailUpdateOk implements Action {
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//
		req.setCharacterEncoding("UTF-8");
		
		
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		LawyerVO lawyerVO = new LawyerVO();
		LawyerDAO lawyerDAO = new  LawyerDAO();
		
		int lawyerNum = (int)session.getAttribute("lawyerNum");
		
		lawyerVO.setLawyerEmail(req.getParameter("email"));
		lawyerVO.setLawyerNum(lawyerNum);
		
		
		boolean emailCheck = lawyerDAO.LawyerEmailUpdate(lawyerVO);
		
		req.setAttribute("emailCheck", emailCheck);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/privacyPage2.jsp");
		
		return actionInfo;
	
	}
}
