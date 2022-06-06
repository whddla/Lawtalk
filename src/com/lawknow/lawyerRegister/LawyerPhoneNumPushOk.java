package com.lawknow.lawyerRegister;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;
import org.json.simple.JSONObject;

import com.lawknow.domain.dao.LawyerDAO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

//
public class LawyerPhoneNumPushOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		PrintWriter out =resp.getWriter();
		JSONObject resultJSON = new JSONObject();
		LawyerDAO lawyerDAO = new LawyerDAO();
		
		int lawyerNum = (int)req.getSession().getAttribute("lawyerNum");
		String lawyerPhoneNum = (String)lawyerDAO.LawyerPhonNum(lawyerNum);
		String newPhoneNum = req.getParameter("newPhoneNum");
		boolean PhoneNumCheck = lawyerPhoneNum.equals(newPhoneNum);
		
		
		if(!PhoneNumCheck && !(newPhoneNum == null)) {
			
//		String api_key = "NCSGDKSNDYTMCT5V"; // 임종욱 계정
//	    String api_secret = "XHPDA2WDFAT5S3JGDF1A4SROWRWZXD5E"; // 임종욱 계정
		String api_key ="";
		String api_secret ="";
		
	    String code = null;
	    String random = RandomStringUtils.random(4,48,122,false,true); // 인증번호 랜덤으로 뽑아주는 거 (count,start,end,문자,숫자)
	    
	    code = "";
	    code += random;
	    	
	    Message coolsms = new Message(api_key, api_secret);
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", newPhoneNum);
	    params.put("from", "01036758324");
	    params.put("type", "SMS");
	    params.put("text", "[ 로노 ] 인증번호 [ " + code +" ]를 입력해주세요.");
	    params.put("app_version", "test app 1.2"); 
	    System.out.println("인증번호 뽑아냄");
	    System.out.println(code);
	    try {
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
	    System.out.println("핸드폰 중복이 아님" + PhoneNumCheck);
	    resultJSON.put("code", code);
		
		} else {
			System.out.println("핸드폰 중복시"+PhoneNumCheck);
			resultJSON.put("error", PhoneNumCheck);
		}
		
		out.print(resultJSON.toJSONString());
		out.close();
		return null;
	}
}
