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

public class UserWriteOk implements Action {
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		System.out.println("난 컨트롤러");
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		
		/*UserVO userVO = new UserVO();*/
		UserWriteVO userWriteVO = new  UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		
		userWriteVO.setTitle(req.getParameter("title"));
		userWriteVO.setContent(req.getParameter("content"));
		/*userWriteVO.setUserNum(userWriteVO.getUserNum());*/
		userWriteDAO.userWrite(userWriteVO);
		
		req.setAttribute("userWriteTitle",userWriteVO.getTitle());
		req.setAttribute("userWritecontent",userWriteVO.getContent());
		req.setAttribute("writeList", userWriteDAO.selectUserWrite());
		
		session.getAttribute("userNum");  // session에있는 값 가져옴
		
		req.setAttribute("userWriteCount", userWriteDAO.countWrite());
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/mycounsel.jsp");
		
		return actionInfo;
	}
}
