package com.lawknow.lawyerComment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
//
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.lawknow.domain.dao.LawyerCommentDAO;
import com.lawknow.domain.vo.LawyerCommentVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerCommentListOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		LawyerCommentDAO commentDAO = new LawyerCommentDAO();
		JSONArray commentJSONs = new JSONArray();
		String lawyerName = (req.getParameter("lawyerName"));
		List<LawyerCommentVO> comments = commentDAO.getCommentList(lawyerName);
		comments.forEach(comment -> {
			JSONObject commentJSON = new JSONObject();
			commentJSON.put("lawyerName", comment.getLawyerName());
			System.out.println("list Json put name 테스트");
			commentJSON.put("content", comment.getContent());
			commentJSON.put("writeDate", comment.getWriteDate());
			System.out.println("list Json put content 테스트");
			commentJSON.put("lawyerWriteNum", comment.getLawyerWriteNum());
			System.out.println("list lawyer writeNum" + comment.getLawyerWriteNum());
			commentJSON.put("lawyerNum", comment.getLawyerNum());
			System.out.println("list lawyerNum  " + comment.getLawyerNum());
			commentJSONs.add(commentJSON);
		});
		
		out.print(commentJSONs.toJSONString());
		out.close();
		return null;
	}

}
