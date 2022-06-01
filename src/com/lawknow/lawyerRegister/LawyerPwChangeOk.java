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
		
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		LawyerDAO lawyerDAO = new LawyerDAO();
		LawyerVO lawyerVO = new LawyerVO();
		
		String newPw = req.getParameter("newPw");
		String oldPw = req.getParameter("oldPw");
		int lawyerNum = (int)session.getAttribute("lawyerNum");
		String lawyerPw = (String)session.getAttribute("lawyerPw");
		
		
		try {
			if(oldPw == lawyerPw) {
				System.out.println("들와따1");
				lawyerVO.setLawyerNum(lawyerNum);
				System.out.println("들와따2");
				lawyerVO.setLawyerPw(new String(Base64.getEncoder().encode(newPw.getBytes())));
				System.out.println("들와따3");
				boolean checkPw = lawyerDAO.LawyerPwChange(lawyerVO);
				System.out.println("들와따4");
				req.setAttribute("checkPw", checkPw);
				System.out.println("들와따5");
			}else {
				req.setAttribute("LawyerPw", lawyerPw);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("들와따 오류");
		}
		
		System.out.println("끝");
		actionInfo.setRedirect(false);
		actionInfo.setPath("/pwChange.jsp");
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/pwChange2.jsp");
		
		return actionInfo;
	}
}
