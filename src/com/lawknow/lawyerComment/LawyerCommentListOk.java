package com.lawknow.lawyerComment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.lawknow.domain.dao.LawyerCommentDAO;
import com.lawknow.domain.vo.LawyerCommentDTO;
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
		
		int lawyerName = Integer.parseInt(req.getParameter("lawyerName"));
		List<LawyerCommentDTO> comments = commentDAO.getCommentList(lawyerName);
		
		comments.forEach(comment -> {
			JSONObject commentJSON = new JSONObject();
			commentJSON.put("lawyerWriteNum", comment.getLawyerWriteNum());
//			commentJSON.put("userWriteNum", comment.getUserWriteNum());
			commentJSON.put("lawyerNum", comment.getLawyerName());
//			commentJSON.put("lawyerId", comment.getLawyerId());
			commentJSON.put("content", comment.getContent());
			
			commentJSONs.add(commentJSON);
		});
		
		out.print(commentJSONs.toJSONString());
		out.close();
		return null;
	}

}
