package com.lawknow.lawyerComment;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.LawyerCommentDAO;
import com.lawknow.domain.vo.LawyerCommentVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerCommentUpdateOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		LawyerCommentVO lawyerCommentVO = new LawyerCommentVO();
		LawyerCommentDAO lawyerCommentDAO = new LawyerCommentDAO();
		
		lawyerCommentVO.setTitle(req.getParameter("title"));
		lawyerCommentVO.setContent(req.getParameter("content"));
		lawyerCommentVO.setWriteDate(req.getParameter("writeDate"));
		
		lawyerCommentDAO.commentUpdate(lawyerCommentVO);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/LawKnowMainPage.jsp");
		
		return null;
	}

}
