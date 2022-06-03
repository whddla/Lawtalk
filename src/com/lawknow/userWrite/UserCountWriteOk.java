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

public class UserCountWriteOk implements Action {
//
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	
		req.setCharacterEncoding("UTF-8");
		HttpSession  session  = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		
	
		UserWriteVO userWriteVO = new  UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		
		/*userWriteVO.setUserWriteNum(req.getParameter("userWriteNum"));*/
		userWriteVO.setField(req.getParameter("field"));
		userWriteVO.setTitle(req.getParameter("title"));
		userWriteVO.setContent(req.getParameter("content"));// 여기까지 글작성에대한 디비를 가져왔다
		userWriteVO.setWriteDate(req.getParameter("writeDate"));
		
		userWriteDAO.countWrite();
		
		/*req.setAttribute("userWriteCount", userWriteDAO.countWrite());*/
		
		 session.setAttribute("writeCounts", userWriteDAO.countWrite());
		
		
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/write.jsp");
		
		return actionInfo;
		
		
	}

}
