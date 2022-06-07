package com.lawknow.lawyerComment;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.LawyerCommentDAO;
import com.lawknow.domain.vo.LawyerCommentVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerComment implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		LawyerCommentDAO lawyercommentDAO = new LawyerCommentDAO();
		ActionInfo actionInfo = new ActionInfo();
//		req.setAttribute("lawyerNum", );
		int lawyerNum = (int)req.getSession().getAttribute("lawyerNum");
		System.out.println("comment에서 lawyerNum 출력 : " + lawyerNum);
		
		String writeDate = lawyercommentDAO.commentDate(lawyerNum);
		System.out.println("comment에서 writedate 출력 : " + writeDate);
		req.setAttribute("writeDate", writeDate);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/answer_page.jsp");
		return actionInfo;
	}

}
