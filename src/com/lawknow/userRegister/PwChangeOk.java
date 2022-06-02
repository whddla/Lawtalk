package com.lawknow.userRegister;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class PwChangeOk implements Action {
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		
		String newPw = req.getParameter("newPw");
		String oldPw = new String (Base64.getEncoder().encode(req.getParameter("oldPw").getBytes()));
		System.out.println("들어왓으");
		int userNum = (int)session.getAttribute("userNum");
		System.out.println(session.getAttribute("userNum"));
		String userPw = (String)session.getAttribute("userPw");
		System.out.println("들와따");
		
		try {
			if(oldPw == userPw) {
				System.out.println("들와따1");
				userVO.setUserNum(userNum);
				System.out.println("들와따2");
				userVO.setUserPw(new String(Base64.getEncoder().encode(newPw.getBytes())));
				System.out.println("들와따3");
				boolean checkPw = userDAO.PwChange(userVO);
				System.out.println("들와따4");
				req.setAttribute("checkPw", checkPw);
				System.out.println("들와따5");
			}else {
				req.setAttribute("UserPw", userPw);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("들와따 오류");
		}
		
		System.out.println("끝");
		actionInfo.setRedirect(false);
		actionInfo.setPath("/pwChange.jsp");
		
		return actionInfo;
	}
}
