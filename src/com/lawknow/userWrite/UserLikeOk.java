package com.lawknow.userWrite;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.lawknow.domain.dao.UserWriteDAO;
import com.lawknow.domain.vo.UserWriteVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserLikeOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		
		JSONObject json = new JSONObject();
		PrintWriter out = resp.getWriter();
		
		UserWriteVO userWriteVO = new UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		
		 int userWriteNum = Integer.parseInt(req.getParameter("userWriteNum"));
		 
		userWriteDAO.plusCount(userWriteNum);
		int num= userWriteDAO.likeCount(userWriteNum);
		
		System.out.println("like 개수:"+ num);
		 
		 json.put("count", num);
		 
		 
		out.print(json.toJSONString()); // 에이작스에서 컨트롤러에 있는걸 가져오려면 반드시 바디태그에 써주어야한다.
		out.close();
		return null;
	}

}
