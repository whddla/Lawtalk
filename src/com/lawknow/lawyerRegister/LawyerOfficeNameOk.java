package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerOfficeNameOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		LawyerDAO lawyerDAO = new LawyerDAO();
		
		int lawyerNum = (int)req.getSession().getAttribute("lawyerNum");
		String officeName = lawyerDAO.LawyerOffice(lawyerNum);
		
		req.setAttribute("officeName", officeName);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/lawlayorMypage.jsp");
		
		return actionInfo;
	}
}
