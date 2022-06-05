package com.lawknow.lawyerRegister;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawknow.domain.vo.LawyerVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerJoinOk implements Action {
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
//
		ActionInfo actionInfo = new ActionInfo();
		LawyerVO lawyerVO = new LawyerVO();
		LawyerDAO lawyerDAO = new LawyerDAO();
		
		lawyerVO.setLawyerId(req.getParameter("lawyerId"));
		lawyerVO.setLawyerName(req.getParameter("lawyerName"));
		lawyerVO.setLawyerEmail(req.getParameter("lawyerEmail"));
	    lawyerVO.setLawyerPw(new String(Base64.getEncoder().encode(req.getParameter("lawyerPw").getBytes())));
		lawyerVO.setLawyerOffice(req.getParameter("lawyerOffice"));
		lawyerVO.setLawyerOfficeNum(req.getParameter("lawyerOfficeNum"));
		lawyerVO.setLawyerPhoneNum(req.getParameter("lawyerPhoneNum"));
		lawyerVO.setLawyerGender(req.getParameter("lawyerGender"));
		lawyerVO.setLawyerGraduateTest(req.getParameter("lawyerGraduateTest"));
		lawyerVO.setLawyerBirth(req.getParameter("lawyerBirth"));
		
		lawyerDAO.join(lawyerVO);
		System.out.println("회원가입 완료");
	      
	    req.setAttribute("lawyerList", lawyerDAO.selectLawyers());
	      
	    actionInfo.setRedirect(false);
	    actionInfo.setPath("/LawKnowMainPage.jsp");
	      
		
		
		return actionInfo;
	}
	
}
