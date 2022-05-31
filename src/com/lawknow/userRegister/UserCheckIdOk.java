package com.lawknow.userRegister;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.lawknow.domain.dao.UserDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserCheckIdOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");

		PrintWriter out = resp.getWriter();
		UserDAO userDAO = new UserDAO();
		String userId = req.getParameter("userId");
		JSONObject json = new JSONObject();
		
		if(userDAO.checkId(userId)) {
			json.put("result", "fail");
		}else {
			json.put("result", "success");
		}
		
		
		out.print(json.toJSONString());
		out.close();
		return null;
	}
}
