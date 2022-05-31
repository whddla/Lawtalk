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
		
		int userWriteNum = 0;
		
	/*	userWriteVO.setUserWriteNum(Integer.parseInt(req.getParameter("userWriteNum")));*/
		userWriteVO.setTitle(req.getParameter("title"));
		userWriteVO.setContent(req.getParameter("content"));
		userWriteVO.setField(req.getParameter("field"));
		/*userWriteVO.setUserNum(userWriteVO.getUserNum());*/
		userWriteDAO.userWrite(userWriteVO);
		
		req.setAttribute("field", userWriteVO.getField());
		req.setAttribute("userWriteTitle",userWriteVO.getTitle());
		req.setAttribute("userWritecontent",userWriteVO.getContent());
		req.setAttribute("writeList", userWriteDAO.selectUserWrite());
		
		
		session.getAttribute("userNum");  // session에있는 값 가져옴
		
		req.setAttribute("userWriteCount", userWriteDAO.countWrite());
		
		userWriteNum = userWriteVO.getUserWriteNum();
		System.out.println(" 숫자 " +userWriteNum);
		/*if(userWriteNum!=0) {*/
			session.setAttribute("userWriteNum", userWriteNum); // 로그인된것을 session에 담아둠 -- > 어떤 컨틀롤러에서도 다 쓸수 있다 
																					//session.getAttribute 로 다른 컨틀롤러로 쓸 수 있다
																				// 파라미터를 보내지 않아도 어디에서나 쓸 수 있다.
			
			//세션초기화
			/*session.invalidate();*/
		/*}*/
		
		
		
		
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/mycounsel.jsp");
		
		return actionInfo;
	}
}
