package com.lawknow.lawyerComment;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.LawyerCommentDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
//
public class LawyerCommentDeleteOk implements Action {
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		System.out.println("delete ok 들어옴");
		new LawyerCommentDAO().commentDelete(Integer.parseInt(req.getParameter("lawyerNum")));
		
		return null;
	}
}

	
