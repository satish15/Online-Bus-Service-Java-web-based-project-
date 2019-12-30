package sis.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






import sis.com.bu.SignupUser;
import sis.com.mail.Sendmail2;


public class SendEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SendEmailController() {
        super();
        }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//PrintWriter pw=response.getWriter();
			ArrayList<SignupUser > list=  new ArrayList<SignupUser>();

		String name=request.getParameter("name");
		String email=request.getParameter("email");
	    String feedback=request.getParameter("feedback");
	    if(name.isEmpty()||email.isEmpty()||feedback.isEmpty()){
	    	RequestDispatcher rd=request.getRequestDispatcher("Feedback.jsp");
	    	request.setAttribute("UserList", list);
	    	rd.forward(request, response);
	    }else{
	    	RequestDispatcher rd=request.getRequestDispatcher("web.jsp");
	    	rd.forward(request, response);
	    }
	
	    	//Sendmail2	mail=new Sendmail2();
	    Sendmail2  mail=new  Sendmail2(); 
	    	try {
				mail.sendMail2(name,email,feedback);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	  
	
	
	}

}
