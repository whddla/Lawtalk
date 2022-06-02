package com.lawknow.lawyerRegister;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerPwCheckOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		PrintWriter out =resp.getWriter();
		LawyerDAO lawyerDAO = new LawyerDAO();
		JSONObject resultJSON = new JSONObject();
		
		int lawyerNum = (int)req.getSession().getAttribute("lawyerNum");
		System.out.println("나옴 :"+lawyerNum);
		String lawyerPw = (String)req.getSession().getAttribute("lawyerPw");
		System.out.println("나옴 :"+lawyerPw);
		String oldPw = (new String(Base64.getEncoder().encode(req.getParameter("oldPw").getBytes())));
		System.out.println("나옴 :"+oldPw);
		
		if(lawyerPw.equals(oldPw)) {
			System.out.println("들어옴");
			resultJSON.put("check", lawyerDAO.LawyerPwcheck(lawyerNum));
		}else {
			System.out.println("실패..");
		}
		out.print(resultJSON.toJSONString());
		out.close();
		System.out.println("끄읏");
		return null;
		
	}
}
