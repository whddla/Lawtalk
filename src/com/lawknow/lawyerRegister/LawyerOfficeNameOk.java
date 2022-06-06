package com.lawknow.lawyerRegister;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lawknow.domain.dao.LawyerCommentDAO;
import com.lawknow.domain.dao.LawyerDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

public class LawyerOfficeNameOk implements Action{
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		
		LawyerDAO lawyerDAO = new LawyerDAO();
		LawyerCommentDAO commentDAO = new LawyerCommentDAO();
		
		int lawyerNum = (int)req.getSession().getAttribute("lawyerNum");
		String officeName = lawyerDAO.LawyerOffice(lawyerNum);
		String lawyerName = lawyerDAO.getLawyerName(lawyerNum);
		String officePhonNum = lawyerDAO.LawyerOfficeNum(lawyerNum);
		
		String first = "";
		String middle = "";
		String last = "";
				
		String first1 = officePhonNum.substring(0,2);
		System.out.println(first1.equals("02"));
		
		if(officePhonNum.length() == 10 && first1.equals("02")) {
			first = officePhonNum.substring(0,2);
			middle = officePhonNum.substring(2,6); 
			last = officePhonNum.substring(6,10);
		}else if(officePhonNum.length() == 10 && !first1.equals("02")) {
			first = officePhonNum.substring(0,3);
			middle = officePhonNum.substring(3,6);
			last = officePhonNum.substring(6,10);			
		} else if(officePhonNum.length() == 9) {
			first = officePhonNum.substring(0,2);
			middle = officePhonNum.substring(2,5); 
			last = officePhonNum.substring(5,9);
		} else if(officePhonNum.length() == 12) {
			first = officePhonNum.substring(0,4);
			middle = officePhonNum.substring(4,8); 
			last = officePhonNum.substring(8,12);
		} else if(officePhonNum.length() == 11) {
			first = officePhonNum.substring(0,3);
			middle = officePhonNum.substring(3,7); 
			last = officePhonNum.substring(7,11);
		}
		

		
		String officeNum = first+ "-" + middle + "-" + last;
		
		req.setAttribute("officeName", officeName);
		req.setAttribute("lawyerName", lawyerName);
		req.setAttribute("officeNum", officeNum);
		req.setAttribute("test", first1);
		actionInfo.setRedirect(false);
		actionInfo.setPath("/lawlayorMypage.jsp");
		
		return actionInfo;
	}
}
