package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawyer.action.ActionInfo;

public class LawyerJoin {

		public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			req.setCharacterEncoding("UTF-8");
			ActionInfo actionInfo = new ActionInfo();
			
			actionInfo.setPath("/lawyer_signup.jsp");
			actionInfo.setRedirect(false);
			
			return actionInfo;
		}
}
