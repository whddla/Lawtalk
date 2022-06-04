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
		//
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		LawyerCommentVO lawyerCommentVO = new LawyerCommentVO();
		LawyerCommentDAO lawyerCommentDAO = new LawyerCommentDAO();
		
//		lawyerCommentVO.setUserWriteNum(Integer.parseInt(req.getParameter("userWriteNum")));
//		lawyerCommentVO.setLawyerNum((Integer)req.getSession().getAttribute("lawyerNum"));

		
		lawyerCommentVO.setContent(req.getParameter("content"));
				
		req.setAttribute("lawyercontent", lawyerCommentVO.getContent());		
		req.setAttribute("lawyerName", lawyerCommentVO.getLawyerName());
		req.setAttribute("lawyerWriteDate", lawyerCommentVO.getWriteDate());
		
		lawyerCommentDAO.commentWrite(lawyerCommentVO);
		actionInfo.setRedirect(false);
		actionInfo.setPath("/answer_page.jsp");

		return actionInfo;
		
//		return null;
		
	}
		
		
}
