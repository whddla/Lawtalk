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

public class UserWriteUpdateOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("난 업데이트 컨트롤러");
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession(); // req를 통해 session을 가져올 수 있다.
		ActionInfo actionInfo = new ActionInfo();
		
		
		UserWriteVO userWriteVO = new  UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		
		/*userWriteVO.setUserWriteNum(req.getParameter("userWriteNum"));*/
		userWriteVO.setField(req.getParameter("field"));
		userWriteVO.setTitle(req.getParameter("title"));
		userWriteVO.setContent(req.getParameter("content"));// 여기까지 글작성에대한 디비를 가져왔다
		userWriteVO.setWriteDate(req.getParameter("writeDate"));
		
		/*userWriteVO.setUserWriteNum(Integer.parseInt(session.getAttribute("userWriteCount")) );*/
//		session.getAttribute("userWrite");
		
		userWriteDAO.userWriteUpdate((Integer)session.getAttribute("userWriteNum")); //여기서 쿼리문 실행
		
		req.setAttribute("userUpdateTitle",userWriteVO.getTitle());
		req.setAttribute("userUpdatecontent",userWriteVO.getContent());
		req.setAttribute("userUpdateField",userWriteVO.getField());
		
		
	/*	req.setAttribute("userWriteTitle",userWriteVO.getTitle());
		req.setAttribute("userWritecontent",userWriteVO.getContent());*/
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/mycounsel.jsp");
		
		
		return actionInfo;
	}

}
