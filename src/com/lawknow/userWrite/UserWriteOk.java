package com.lawknow.userWrite;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.FileDAO;
import com.lawknow.domain.dao.UserWriteDAO;
import com.lawknow.domain.vo.UserVO;
import com.lawknow.domain.vo.UserWriteVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UserWriteOk implements Action {
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		System.out.println("난 컨트롤러");
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		
		String uploadPath ="D:\\web_1900_kgw\\jsp\\workspace\\kovengerss\\WebContent\\upload"; //여기다가 첨부된 파일을 업로드 하겠다
		int fileSize =1024*1024*5; //5M
		
		UserVO userVO = new UserVO();
		UserWriteVO userWriteVO = new  UserWriteVO();
		
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		FileDAO fileDAO = new FileDAO();
		
		int userWriteNum = 0;
		//int  userNum =  (int)session.getAttribute("userNum");
	/*	userWriteVO.setUserWriteNum(Integer.parseInt(req.getParameter("userWriteNum")));*/
		//userWriteVO.setUserNum(userNum);
		
		//서버에 업로드 할때에는 얘만쓰면된다.
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		
		userWriteVO.setTitle(multipartRequest.getParameter("title"));
		userWriteVO.setContent(multipartRequest.getParameter("content"));
		userWriteVO.setField(multipartRequest.getParameter("field"));
		userWriteVO.setUserNum((Integer)session.getAttribute("userNum"));
		
		userWriteDAO.userWrite(userWriteVO);//  게시글 추가 메소드 실행
		
		//파일추가 메소드 실행
		fileDAO.insert(multipartRequest, userWriteDAO.getSeq()); //userWriteNum는 지금추가한 번호잖아
		
		req.setAttribute("field", userWriteVO.getField());
		req.setAttribute("userWriteTitle",userWriteVO.getTitle());
		req.setAttribute("userWritecontent",userWriteVO.getContent());
		req.setAttribute("writeList", userWriteDAO.selectUserWrite());
		req.setAttribute("count", userWriteDAO.countWrite());
		
		//종임님이 보내주시는 session값 가져오기 
		/*req.setAttribute("num", session.getAttribute("userNum"));*/
		
		
		
		
		/*if(userWriteNum>0) { // unsigned 해줘서
*/			session.setAttribute("userWriteNum", userWriteNum); // 로그인된것을 session에 담아둠 -- > 어떤 컨틀롤러에서도 다 쓸수 있다 
																					//session.getAttribute 로 다른 컨틀롤러로 쓸 수 있다
																				// 파라미터를 보내지 않아도 어디에서나 쓸 수 있다.
			session.setAttribute("fields", userWriteVO.getField());
	
/*		}*/
		
		
		actionInfo.setRedirect(false);//forward방식으로 쏨
		actionInfo.setPath("/mycounsel.jsp");
		
		return actionInfo;
	}
}
