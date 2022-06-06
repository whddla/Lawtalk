package com.lawknow.lawyerComment;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.lawknow.domain.dao.LawyerCommentDAO;
import com.lawknow.domain.dao.LawyerDAO;
import com.lawknow.domain.vo.LawyerCommentVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerCommentOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		LawyerCommentVO lawyerCommentVO = new LawyerCommentVO();
		LawyerCommentDAO lawyerCommentDAO = new LawyerCommentDAO();
		LawyerDAO lawyerDAO = new LawyerDAO();
        int lawyerNum = (int)req.getSession().getAttribute("lawyerNum");
        
        String lawyerName = lawyerDAO.getLawyerName(lawyerNum);
        List<LawyerCommentVO> comments = lawyerCommentDAO.getCommentList(lawyerName);
        System.out.println("변호사 이름 : " + lawyerName);
    	comments.forEach(comment -> {
			comment.getLawyerWriteNum();
			System.out.println("list lawyer writeNum" + comment.getLawyerWriteNum());
		});
        
        
        
        
		lawyerCommentVO.setContent(req.getParameter("content"));
		System.out.println("commentOk에서 content 받아옴");
		
		lawyerCommentVO.setLawyerNum((int)req.getSession().getAttribute("lawyerNum"));
		System.out.println("commentOk에서 lawyerNum 받아옴");
		System.out.println((int)req.getSession().getAttribute("lawyerNum"));
		lawyerCommentVO.setLawyerName((String)req.getSession().getAttribute("lawyerName"));
		System.out.println("commentOk에서 lawyername 받아옴");
		
	
		lawyerCommentDAO.commentWrite(lawyerCommentVO);
		System.out.println("1번 째 작성" + lawyerCommentVO.getLawyerWriteNum());

		return null;
	}
}
