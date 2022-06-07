package com.lawknow.userRegister;

import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserFindPwOk implements Action{
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		HashMap<String, String> userMap = new HashMap<>();
		UserDAO userDAO = new UserDAO();
		String userEmail= req.getParameter("userEmail");
		String userId = req.getParameter("userId");
		StringBuilder sb = new StringBuilder();
		
		userMap.put("userEmail", userEmail);
		userMap.put("userId", userId);
		String userPw = userDAO.UserFindPw(userMap);
		userPw = new String(Base64.getDecoder().decode((userPw).getBytes()));
		System.out.println(userPw);

		int pwdSize = userPw.length()/2;
		String resultPwd_1 = userPw.substring(0, pwdSize );
		
		// 뒤의 절반은 *로 표시
		String tmp = "";
		if (pwdSize%2 ==1) { // 홀수인 경우 * 한개 더 추가
			for( int i=0; i<pwdSize+1; i++ ) {
				tmp += "*";
			}
		} else {
			for( int i=0; i<pwdSize; i++ ) {
				tmp += "*";
			}
		}
		String resultPwd = resultPwd_1 + tmp;
		
		userPw=resultPwd;
		
		if(userPw != null) {
			req.getSession().setAttribute("userPw", userPw);
			System.out.println(userPw);
			actionInfo.setPath("/findPw.jsp");
		}else {
			actionInfo.setPath("/find_idpw.jsp");
		}
		actionInfo.setPath("/findPw.jsp");
		actionInfo.setRedirect(false);
		return actionInfo;
	}
}
