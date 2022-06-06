package com.lawknow.userWrite;
////
import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lawknow.domain.dao.FileDAO;
import com.lawknow.domain.dao.UserWriteDAO;
import com.lawknow.domain.vo.UserWriteVO;
import com.lawyer.action.Action;
import com.lawyer.action.ActionInfo;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UserWriteUpdateOk implements Action {
//
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("난 업데이트 컨트롤러");
		req.setCharacterEncoding("UTF-8");
		
		String uploadPath ="D:\\web_1900_kgw\\jsp\\workspace\\kovengerss\\WebContent\\upload"; //여기다가 첨부된 파일을 업로드 하겠다
		int fileSize =1024*1024*5; //5M
		
		HttpSession session = req.getSession(); // req를 통해 session을 가져올 수 있다.
		
		 
		UserWriteVO userWriteVO = new  UserWriteVO();
		UserWriteDAO userWriteDAO = new UserWriteDAO();
		FileDAO fileDAO = new FileDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		
		int userWriteNum = 0, page = 0;
		
		
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		/*userWriteVO.setUserWriteNum(req.getParameter("userWriteNum"));*/
		page = Integer.parseInt(multipartRequest.getParameter("page"));
		userWriteNum = Integer.parseInt(multipartRequest.getParameter("userWriteNum").trim());
		userWriteVO.setField(multipartRequest.getParameter("field"));
		userWriteVO.setTitle(multipartRequest.getParameter("title"));
		userWriteVO.setContent(multipartRequest.getParameter("content"));// 여기까지 글작성에대한 디비를 가져왔다
		userWriteVO.setUserWriteNum(userWriteNum);
		/*userWriteVO.setWriteDate(multipartRequest.getParameter("writeDate"));*/
		
		/*userWriteVO.setUserWriteNum(Integer.parseInt(session.getAttribute("userWriteCount")) );*/
//		session.getAttribute("userWrite");
		
		userWriteDAO.userWriteUpdate(userWriteVO); //여기서 쿼리문 실행
		 
		fileDAO.select(userWriteNum).forEach(file -> {
			File f = new File(uploadPath, file.getFileName());
			if(f.exists()) { f.delete();}
		});
		fileDAO.delete(userWriteNum);
		fileDAO.insert(multipartRequest, userWriteNum);
		
		/*req.setAttribute("userUpdateTitle",userWriteVO.getTitle());
		req.setAttribute("userUpdatecontent",userWriteVO.getContent());
		req.setAttribute("userUpdateField",userWriteVO.getField());*/
		
		
	/*	req.setAttribute("userWriteTitle",userWriteVO.getTitle());
		req.setAttribute("userWritecontent",userWriteVO.getContent());*/
		
		actionInfo.setRedirect(true);
		actionInfo.setPath(req.getContextPath() + "/userWrite/UserWriteListsOk.uw?page=" + page);
		
		
		return actionInfo;
	}

}
