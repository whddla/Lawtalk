package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawknow.domain.vo.LawyerVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerDeleteAccountOk implements Action{
	////
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8"); 
		
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		LawyerDAO lawyerDAO = new LawyerDAO();
		LawyerVO lawyerVO = new LawyerVO();
		System.out.println("들어옴1");
		int lawyerNum = (int)session.getAttribute("lawyerNum");
		lawyerVO.setLawyerNum(lawyerNum);
		System.out.println("들어옴2");
		req.setAttribute("checkDel2", lawyerDAO.LawyerDeleteAccount(lawyerVO));
		System.out.println("들어옴3");
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/UserMain.ul");
		
		return actionInfo;
	}
}
