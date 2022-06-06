package com.lawknow.lawyerComment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
		System.out.println("list 테스트1");
		
		PrintWriter out = resp.getWriter();
		
		System.out.println("list 테스트2");
		LawyerCommentDAO commentDAO = new LawyerCommentDAO();
		JSONArray commentJSONs = new JSONArray();
		System.out.println("list 테스트3");
		
		String lawyerName = (req.getParameter("lawyerName"));
		List<LawyerCommentVO> comments = commentDAO.getCommentList(lawyerName);
		System.out.println("list 테스트4");
		comments.forEach(comment -> {
			JSONObject commentJSON = new JSONObject();
			commentJSON.put("lawyerName", comment.getLawyerName());
			System.out.println("list Json put name 테스트");
			commentJSON.put("content", comment.getContent());
			commentJSON.put("writeDate", comment.getWriteDate());
			System.out.println("list Json put content 테스트");
			commentJSON.put("lawyerNum", comment.getLawyerNum());
			System.out.println("list lawyerNum");
			commentJSONs.add(commentJSON);
		});
		
		out.print(commentJSONs.toJSONString());
		out.close();
		return null;
	}

}
