package com.lawknow.userRegister;

import java.io.IOException;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

//
public class UserPhoneNumPushOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		ActionInfo actionInfo = new ActionInfo();
		
		String api_key = "";
	    String api_secret = "";
	    String code = null;
	    int length = 0;
	    Random r = new Random(); 
	    
	    code = "";
	    code += r.nextInt(1000000);
	    	
	    length = 6 - code.length();
	    	 
	    for (int i = 0; i < length; i++) {
	    	code ="0" + code; 
		}
	    
	    Message coolsms = new Message(api_key, api_secret);
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", req.getParameter("userPhoneNum"));
	    params.put("from", "01000000000");
	    params.put("type", "SMS");
	    params.put("text", "인증번호 [ " + code +" ]를 입력해주세요.");
	    params.put("app_version", "test app 1.2"); 
	    System.out.println("랜덤 뽑아냄");
	    System.out.println(code);
	    try {
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
		
	    req.setAttribute("code", code);
	    
	    actionInfo.setRedirect(false);
	    actionInfo.setPath("/privacyPage.jsp");
	    
		return actionInfo;
	}
}
