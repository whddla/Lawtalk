package com.lawknow.userRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawyer.action.ActionInfo;

public class UserMain {

		public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			req.setCharacterEncoding("UTF-8");
			ActionInfo actionInfo = new ActionInfo();
			
			actionInfo.setPath("/logout.jsp");
			actionInfo.setRedirect(false);
			
			return actionInfo;
		}
}
