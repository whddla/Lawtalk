package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawknow.domain.vo.LawyerVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
//
public class LawyerPhonNumUpdateOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		HttpSession session = req.getSession();
		LawyerVO lawyerVO = new LawyerVO();
		LawyerDAO lawyerDAO = new LawyerDAO();
		
		int lawyerNum = (int)req.getSession().getAttribute("lawyerNum");
		System.out.println(lawyerNum);
		String newPhoneNumCheck = req.getParameter("newPhoneNum");
		System.out.println(newPhoneNumCheck);
		String lawyerPhoneNum = lawyerDAO.LawyerPhoneNum(lawyerNum);
		System.out.println(lawyerPhoneNum);
		System.out.println(lawyerPhoneNum.equals(newPhoneNumCheck));
		
		if(!lawyerPhoneNum.equals(newPhoneNumCheck)) {
			String newPhoneNum = req.getParameter("newPhoneNum");
			lawyerVO.setLawyerNum(lawyerNum);
			lawyerVO.setLawyerPhoneNum(newPhoneNum);
			boolean phoneNumCheck = lawyerDAO.LawyerPhoneChange(lawyerVO);
			req.setAttribute("phoneNumCheck", phoneNumCheck);
		}else {
			req.setAttribute("phoneError", true);
		}
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/privacyPage2.jsp");
		
		return actionInfo;
	}
}
