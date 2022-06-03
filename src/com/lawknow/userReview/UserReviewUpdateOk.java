package com.lawknow.userReview;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserReviewDAO;
import com.lawknow.domain.vo.UserReviewVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
//
public class UserReviewUpdateOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		UserReviewVO userReviewVO = new UserReviewVO();
		UserReviewDAO userReviewDAO = new UserReviewDAO();
		
		userReviewVO.setContent(req.getParameter("content"));
		userReviewVO.setUserNum(Integer.parseInt(req.getParameter("userNum")));
		
		userReviewDAO.reviewUpdate(userReviewVO);
		req.setAttribute("updateContent",userReviewVO.getContent() );
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/mypage.jsp");
		return actionInfo;
	}

}
