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
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8"); 
		
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		LawyerDAO lawyerDAO = new LawyerDAO();
		LawyerVO lawyerVO = new LawyerVO();
		
		int lawyerNum = (int)session.getAttribute("lawyerNum");
		lawyerVO.setLawyerNum(lawyerNum);
		req.setAttribute("checkDel", lawyerDAO.LawyerDeleteAccount(lawyerVO));
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/lawyerwithdrawal.jsp");
		
		return actionInfo;
	}
}
