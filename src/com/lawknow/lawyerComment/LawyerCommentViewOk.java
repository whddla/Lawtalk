package com.lawknow.lawyerComment;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.lawknow.domain.dao.LawyerCommentDAO;
import com.lawknow.domain.vo.LawyerCommentVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerCommentViewOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		LawyerCommentVO lawyerCommentVO = new LawyerCommentVO();
		LawyerCommentDAO lawyerCommentDAO = new LawyerCommentDAO();
		
		int lawyer_write_num = Integer.parseInt(req.getParameter("lawyer_write_num"));
		List<LawyerCommentVO> commentList = lawyerCommentDAO.getCommentList(lawyer_write_num);
		actionInfo.setRedirect(false);
		actionInfo.setPath("/answer_page.jsp");

		JSONArray comments = new JSONArray();
		for(LawyerCommentVO comment : commentList) {
				JSONObject obj = new JSONObject();
				obj.put("requestnum", comments.getrequestnum());
		}
		
		return actionInfo;
		
	}
		
		
}
