	package com.lawknow.lawyerRegister;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawknow.domain.vo.LawyerVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerPwChangeOk implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		LawyerDAO lawyerDAO = new LawyerDAO();
		LawyerVO lawyerVO = new LawyerVO();
		
		String newPw = req.getParameter("newPw");
		String oldPw = (new String(Base64.getEncoder().encode(req.getParameter("oldPw").getBytes())));
		int lawyerNum = (int)session.getAttribute("lawyerNum");
		System.out.println(session.getAttribute("lawyerNum"));
		String lawyerPw = (String)session.getAttribute("lawyerPw");
		
		
			if(lawyerPw.equals(oldPw)) {
				lawyerVO.setLawyerNum(lawyerNum);
				lawyerVO.setLawyerPw(new String(Base64.getEncoder().encode(newPw.getBytes())));
				boolean checkPw = lawyerDAO.LawyerPwChange(lawyerVO);
				req.setAttribute("checkPw", checkPw);
			}else {
				req.setAttribute("LawyerPwCheck", true);
			}
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/pwChange2.jsp");
		
		return actionInfo;
	}
}
