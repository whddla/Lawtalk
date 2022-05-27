package com.lawknow.lawyerRegister;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerCheckIdOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		LawyerDAO lawyerDAO = new LawyerDAO();
		JSONObject resultJSON = new JSONObject();
		
		String lawyerId = req.getParameter("lawyerId");
		resultJSON.put("check", lawyerDAO.checkId(lawyerId));
		
		out.print(resultJSON.toJSONString());
		out.close();
		return null;
	}
}
