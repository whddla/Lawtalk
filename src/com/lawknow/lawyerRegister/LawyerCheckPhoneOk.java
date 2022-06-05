package com.lawknow.lawyerRegister;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;
import org.json.simple.JSONObject;

import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


public class LawyerCheckPhoneOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		System.out.println("들어옴");
		PrintWriter out =resp.getWriter();
		JSONObject resultJSON = new JSONObject();
		
		String lawyerPhoneNum = req.getParameter("lawyerPhoneNum");
		System.out.println(req.getParameter("lawyerPhoneNum"));
//		String apiKey = "NCSYPPQD8TYXSMOK";
//		String apiSecret = "4EYFTOQXSKT8RAFHH2ERU1ECUS7NMIYC";
		String apiKey="";
		String apiSecret="";
		
		String code = null;
	    String random = RandomStringUtils.random(4,48,122,false,true); // 인증번호 랜덤으로 뽑아주는 거 (count,start,end,문자,숫자)
	    
	    code = "";
	    code += random;
	    
		Message coolsms = new Message(apiKey, apiSecret);
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", lawyerPhoneNum); //받는사람
		params.put("from", "01050118912"); //보내는사람
		params.put("type", "SMS");
		params.put("text", "[ 로노 ] 인증번호 [ " + code +" ]를 입력해주세요.");
		params.put("app_version", "test app 1.2"); // application name and version
		System.out.println("인증번호 뽑아냄");
		System.out.println(code);
		
		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
		resultJSON.put("code", code);
		out.print(resultJSON.toJSONString());
		out.close();
		return null;
	}
}