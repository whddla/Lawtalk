package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.UserWriteDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawknow.domain.vo.UserWriteVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserWriteDeleteOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("나는 딜리트 컨트롤러");
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		
		UserWriteVO userWriteVO = new  UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		
		/*userWriteVO.setUserWriteNum(req.getParameter("userWriteNum"));*/
		userWriteVO.setTitle(req.getParameter("title"));
		userWriteVO.setContent(req.getParameter("content"));
		
		
		/*userWriteDAO.userDelete(userWriteVO);*/
		userWriteDAO.userDelete((int)session.getAttribute("userWriteNum")); //여기서 쿼리문 실행
		req.setAttribute("userWriteDeleteNum",userWriteVO.getUserWriteNum());
		actionInfo.setRedirect(false);
		actionInfo.setPath("/mycounsel.jsp");
		
		return actionInfo;
	}

}
