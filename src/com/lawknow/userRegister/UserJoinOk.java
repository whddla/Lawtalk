package com.lawknow.userRegister;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.UserDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class UserJoinOk implements Action{

   @Override
   public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
      req.setCharacterEncoding("UTF-8");
      ActionInfo actionInfo = new ActionInfo();
      UserVO userVO = new UserVO();
      UserDAO userDAO = new UserDAO();
      
      userVO.setUserId(req.getParameter("userId"));
      userVO.setUserName(req.getParameter("userName"));
      userVO.setUserEmail(req.getParameter("userEmail"));
      userVO.setUserPw(new String(Base64.getEncoder().encode(req.getParameter("userPw").getBytes())));
      userVO.setUserPhoneNum(req.getParameter("userPhoneNum"));
      userVO.setUserGender(req.getParameter("userGender"));
      userVO.setUserBirth(Integer.parseInt(req.getParameter("userBirth"))); //수정 재원
      userVO.setUserKakaoEmail(req.getParameter("userKakaoEmail"));
      userVO.setUserFacebookEmail(req.getParameter("userFacebookEmail"));
      
      userDAO.join(userVO);
      
      req.setAttribute("userList", userDAO.selectUsers());
      
      actionInfo.setRedirect(false);
      actionInfo.setPath("/Success.jsp");
      
      
      return actionInfo;
   }
}