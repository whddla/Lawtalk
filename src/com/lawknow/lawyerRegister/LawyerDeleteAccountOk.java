package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawknow.domain.vo.LawyerVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerDeleteAccountOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
	
		ActionInfo actionInfo = new ActionInfo();
		LawyerVO lawyerVO = new LawyerVO();
		LawyerDAO lawyerDAO = new LawyerDAO();
		
		
		lawyerVO.getLawyerNum();
		
		lawyerDAO.deleteAccount(lawyerVO);
		
		actionInfo.setRedirect(false);
		/*회원탈퇴*/
		actionInfo.setPath("/LawKnowMainPage.jsp");
	
		return actionInfo;
		
	}
}
