package com.lawknow.userRegister;
//
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
//
public class UserPwCheckOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		PrintWriter out =resp.getWriter();
		UserDAO userDAO = new UserDAO();
		JSONObject resultJSON = new JSONObject();
		
		int userNum = (int)req.getSession().getAttribute("userNum");
		System.out.println("나옴 :"+userNum);
		String userPw = (String)session.getAttribute("userPw");
		System.out.println("나옴 :"+userPw);
		String oldPw = (new String(Base64.getEncoder().encode(req.getParameter("oldPw").getBytes())));
		System.out.println("나옴 :"+oldPw);
		
		if(userPw.equals(oldPw)) {
			System.out.println("들어옴");
			resultJSON.put("check", userDAO.UserPwcheck(userNum));
		}else {
			System.out.println("실패..");
		}
		out.print(resultJSON.toJSONString());
		out.close();
		System.out.println("끄읏");
		return null;
	}
}
