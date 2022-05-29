package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserWriteDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawknow.domain.vo.UserWriteVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserRequestNumOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		UserVO userVO = new UserVO();
		UserWriteVO userWriteVO = new  UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		
		/*userWriteVO.setUserWriteNum(req.getParameter("userWriteNum"));*/
		userWriteVO.setTitle(req.getParameter("title"));
		userWriteVO.setContent(req.getParameter("content"));// 여기까지 글작성에대한 디비를 가져왔다
		userWriteVO.setWriteDate(req.getParameter("writeDate"));
		
		userWriteDAO.requestNum(userWriteVO);
		
		req.setAttribute("userRequestNum", userWriteDAO.requestNum(userWriteVO));
		actionInfo.setRedirect(false);
		actionInfo.setPath("/mypage.jsp");
		
		return actionInfo;
		
		
	}

}
