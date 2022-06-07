package com.lawknow.userRegister;
//
import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.UserDAO;
import com.lawyer.action.ActionInfo;

public class UserLoginOk {
	//
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		HttpSession session = req.getSession();
		HashMap<String, String> userMap = new HashMap<>();
		UserDAO userDAO = new UserDAO();
		String userId = req.getParameter("userId");
		String userPw = (new String(Base64.getEncoder().encode(req.getParameter("userPw").getBytes())));
		String saveId= req.getParameter("saveId");
		int userNum = 0;
		String userName = null;
		String userEmail= null;
		String userGender = null;
		String userBirth = null;
		String userPhonNum = null;
		String userKakaoEmail = null;
		String userFaceBookEmail = null;
		
		
		userMap.put("userId", userId);
		userMap.put("userPw", userPw);
		System.out.println("입력 아이디: "+userId);
		System.out.println("입력 비번: "+userPw);
		
		
		userNum = userDAO.loginOk(userMap);
		System.out.println("DAO로 가져온 의뢰인 번호: "+userNum);
		userName = userDAO.getUserName(userNum);
		System.out.println("DAO로 가져온 의뢰인 이름: "+userName);
		userEmail = userDAO.UserEmail(userNum);
		System.out.println("DAO로 가져온 의뢰인 이메일: "+userEmail);
		userBirth = userDAO.UserBirth(userNum);
		System.out.println("DAO로 가져온 의뢰인 생일: "+userBirth);
		userGender = userDAO.UserGender(userNum);
		System.out.println("DAO로 가져온 의뢰인  성별: "+userGender);
		userPhonNum = userDAO.UserPhonNum(userNum);
		System.out.println("DAO로 가져온 의뢰인 폰번호: "+userPhonNum);
		userKakaoEmail = userDAO.UserKakaoEmail(userNum);
		System.out.println("DAO로 가져온 의뢰인 카톡이메일: "+userKakaoEmail);
		userFaceBookEmail = userDAO.UserFaceBookEmail(userNum);
		System.out.println("DAO로 가져온 의뢰인 페북이메일: "+userFaceBookEmail);
		
		
		if(userNum != 0) {
			req.getSession().setAttribute("userNum", userNum);
			req.getSession().setAttribute("userName", userName);
			req.getSession().setAttribute("userPw", userPw);
			req.getSession().setAttribute("userId", userId);
			req.getSession().setAttribute("userEmail", userEmail);
			req.getSession().setAttribute("userGender", userGender);
			req.getSession().setAttribute("userPhonNum", userPhonNum);
			req.getSession().setAttribute("userBirth", userBirth);
			req.getSession().setAttribute("userKakaoEmail", userKakaoEmail);
			req.getSession().setAttribute("userFaceBookEmail", userFaceBookEmail);
			System.out.println("의뢰인 식별번호	: " + userNum);
			System.out.println("의뢰인 이름 		: " + userName);
			System.out.println("의뢰인 아이디 		: " + userId);
			System.out.println("의뢰인 비밀번호 	: " + userPw);
			System.out.println("의뢰인 이메일 		: " + userEmail);
			System.out.println("의뢰인 성별 		: " + userGender);
			System.out.println("의뢰인 폰번호 		: " + userPhonNum);
			System.out.println("의뢰인 출생년도 	: " + userBirth);
			System.out.println("의뢰인 카톡이메일 	: " + userKakaoEmail);
			System.out.println("의뢰인 페북이메일 	: " + userFaceBookEmail);
		
			actionInfo.setPath("/LawKnowMainPage.jsp");
		
		}else {
			actionInfo.setPath("/UserLogin.ul");
		}
		actionInfo.setPath("/UserLogin.ul");
		actionInfo.setRedirect(false);
		
		return actionInfo;
	}

}
