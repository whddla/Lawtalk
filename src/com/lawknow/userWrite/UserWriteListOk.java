package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserWriteDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawknow.domain.vo.UserWriteVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserWriteListOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		UserVO userVO = new UserVO();
		UserWriteVO userWriteVO = new  UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		
		String temp = req.getParameter("page");
		int page = temp ==null ? 1 :Integer.parseInt(temp); // null이면 첫페이지 ->1
		int pageSize =10;
		int totalCount = userWriteDAO.getTotal();
		
		int endRow = page * pageSize;
		int startRow = endRow -(pageSize-1);

		int startPage =((page-1)/ pageSize) * pageSize +1; // 무조건 1페이지부터시작
		int endPage = startPage +9;  // 10자리로 끊어주기위해서
		int realEndPage = (int)(Math.ceil((double)totalCount/ pageSize)) ; // 정말 마지막페이지
		
		//진짜 마지막 페이지보다 endPage가 크면 나된다
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("startPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("userWriteList", userWriteDAO.getList(startRow, endRow));
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/");
		
		
		return actionInfo;
	}

}
