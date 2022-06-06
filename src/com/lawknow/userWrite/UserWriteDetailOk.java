package com.lawknow.userWrite;
//
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.FileDAO;
import com.lawknow.domain.dao.UserWriteDAO;
import com.lawyer.action.ActionInfo;

//

public class UserWriteDetailOk {
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		int userWriteNum = Integer.parseInt(req.getParameter("userWriteNum"));
		int page = Integer.parseInt(req.getParameter("page"));
		
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		FileDAO fileDAO = new FileDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		//게시글 번호로 조회한 게시글의 전체 정보를 requestScope에 저장한다.
		req.setAttribute("userWrite", userWriteDAO.selectDetail(userWriteNum));
		req.setAttribute("page", page);
		req.setAttribute("files", fileDAO.select(userWriteNum));
		
		System.out.println(userWriteDAO.selectDetail(userWriteNum));
		
		//상세보기로 왔다면, 조회수를 1 증가시켜준다.
		userWriteDAO.updateReadCount(userWriteNum);
		
		//requestScope에 데이터를 담았기 때문에 forward로 페이지까지 req객체를 유지한다.
		actionInfo.setRedirect(false);
		actionInfo.setPath("/boardDetail.jsp");
		
		return actionInfo;
	}
}
