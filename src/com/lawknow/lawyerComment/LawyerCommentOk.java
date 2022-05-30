package com.lawknow.lawyerComment;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.LawyerCommentDAO;
import com.lawknow.domain.vo.LawyerCommentVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerCommentOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		LawyerCommentVO lawyerCommentVO = new LawyerCommentVO();
		LawyerCommentDAO lawyerCommentDAO = new LawyerCommentDAO();
		
//		lawyerCommentVO.setTitle(req.getParameter("title"));
//		lawyerCommentVO.setWriteDate(req.getParameter("writeDate"));
		lawyerCommentVO.setContent(req.getParameter("content"));
		
		lawyerCommentDAO.commentWrite(lawyerCommentVO);
		
		
//		req.setAttribute("contentView", lawyerCommentDAO.commentView(lawyerCommentVO));
		req.setAttribute("lawyercontent", lawyerCommentVO.getContent());
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/answer_page.jsp");

		return actionInfo;
		
	}
		
		
}
