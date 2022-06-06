package com.lawknow.userWrite;
//
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.dao.UserWriteDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawknow.domain.vo.UserWriteVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserAnswerOk implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		System.out.println("난 컨트롤러");
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		
		UserVO userVO = new UserVO();
		UserWriteVO userWriteVO = new  UserWriteVO();
		
		UserDAO userDAO = new UserDAO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();

		int total = userWriteDAO.getTotal();
		
		req.setAttribute("userWriteList", userWriteDAO.selectUserWrite()); // 그럼 여기에는 총 글 목록!
		req.setAttribute("total",total);
		
		System.out.println(userWriteDAO.selectUserWrite());
		System.out.println(total);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/client_request_waiting.jsp");
		
		return actionInfo;
	}

}
