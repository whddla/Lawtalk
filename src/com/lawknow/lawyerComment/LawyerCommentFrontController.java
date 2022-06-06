package com.lawknow.lawyerComment;

import java.io.IOException;
//
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LawyerCommentFrontController extends HttpServlet {

	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doProcess(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doProcess(req, resp);
    }

    protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String requestURL = req.getRequestURI();
       String command = requestURL.substring(requestURL.lastIndexOf("/") + 1);

      
   	switch(command) {
	case "LawyerCommentListOk.lcc":
		new LawyerCommentListOk().execute(req, resp);
		break;
	case "LawyerCommentOk.lcc":
		new LawyerCommentOk().execute(req, resp);
		break;
	case "LawyerCommentUpdateOk.lcc":
		System.out.println("update forntcontroller");
		new LawyerCommentUpdateOk().execute(req, resp);
		break;
	case "LawyerCommentDeleteOk.lcc":
		System.out.println("delete forntcontroller");
		new LawyerCommentDeleteOk().execute(req, resp);
		break;
   		}
    }
}
       

    


