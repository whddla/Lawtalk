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
           
        
        
        
		lawyerCommentVO.setContent(req.getParameter("content"));
		System.out.println("commentOk에서 content 받아옴");
		
		lawyerCommentVO.setLawyerNum(lawyerNum);
		System.out.println("commentOk에서 lawyerNum 받아옴");
		System.out.println((int)req.getSession().getAttribute("lawyerNum"));
		lawyerCommentVO.setLawyerName((String)req.getSession().getAttribute("lawyerName"));
		System.out.println("commentOk에서 lawyername 받아옴");
		
		lawyerCommentVO.setWriteDate((String)req.getSession().getAttribute("writeDate"));
		System.out.println("commentok에서 session으로 현재시간 받아오기1" + req.getSession().getAttribute("writeDate"));
		
		
		lawyerCommentVO.setWriteDate(lawyerCommentDAO.commentDate(lawyerNum));
		
		System.out.println("commentok에서 현재시간 받아오기찐막막막 : " + req.getAttribute("writeDate"));
		
		lawyerCommentVO.getWriteDate();
		System.out.println("commentok 에서 writedate 출력 : " + lawyerCommentVO.getWriteDate());
		
		lawyerCommentDAO.commentWrite(lawyerCommentVO);
		System.out.println("1번 째 작성" + lawyerCommentVO.getLawyerWriteNum());
		
		
		return null;
	}
}
