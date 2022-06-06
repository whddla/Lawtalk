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
	//	
//		ActionInfo actionInfo = new ActionInfo();
		
		LawyerCommentVO lawyerCommentVO = new LawyerCommentVO();
		LawyerCommentDAO lawyerCommentDAO = new LawyerCommentDAO();
		
		lawyerCommentVO.setContent(req.getParameter("content"));
		System.out.println("업뎃 컨텐트");
		System.out.println(req.getParameter("lawyerNum"));
		lawyerCommentVO.setLawyerNum((int)(req.getSession().getAttribute("lawyerNum")));
		
//		req.setAttribute("lawyerUpdateTitle",lawyerCommentVO.getTitle());
//		req.setAttribute("lawyerUpdatecontent",lawyerCommentVO.getContent());
		
		lawyerCommentDAO.commentUpdate(lawyerCommentVO);
		
//		actionInfo.setRedirect(false);
//		actionInfo.setPath("/mycounsel2.jsp");
		
//		return actionInfo;
		return null;
	}

}
