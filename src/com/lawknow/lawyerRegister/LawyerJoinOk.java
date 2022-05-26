package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
import com.lawyer.domain.dao.LawyerDAO;
import com.lawyer.domain.vo.LawyerVO;

public class LawyerJoinOk implements Action {
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");

		ActionInfo actionInfo = new ActionInfo();
		
		LawyerVO lawyerVO = new LawyerVO();
		LawyerDAO lawyerDAO = new LawyerDAO();
		
		lawyerVO.setLawyerId(req.getParameter("lawyerId"));
		lawyerVO.setLawyerName(req.getParameter("lawyerName"));
		lawyerVO.setLawyerEmail(req.getParameter("lawyerEmail"));
		lawyerVO.setLawyerPw(req.getParameter("lawyerPw"));
		lawyerVO.setLawyerOffice(req.getParameter("lawyerOffice"));
		lawyerVO.setLawyerOfficeNum(req.getParameter("lawyerOfficeNum"));
		lawyerVO.setLawyerPhoneNum(req.getParameter("lawyerPhoneNum"));
		lawyerVO.setLawyerGraduateTest(req.getParameter("lawyerGraduateTest"));
		
		lawyerDAO.join(lawyerVO);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/LawKnowMainPage.jsp");
		
		
		return actionInfo;
	}
	
}
