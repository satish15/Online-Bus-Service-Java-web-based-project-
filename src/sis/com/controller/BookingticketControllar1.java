package sis.com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.bu.Bookingticket;
import sis.com.bu.SignupUser;
import sis.com.util.SisDbUtil;

public class BookingticketControllar1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BookingticketControllar1() {
        super();
            }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			Bookingticket  bookTi=null;
			List<Bookingticket> list=new ArrayList<Bookingticket>();
			String name=request.getParameter("name");
			String busname=request.getParameter("busname");
			String email=request.getParameter("email");
			String contact=request.getParameter("contact");
			String gender=request.getParameter("gender");
			String   source=request.getParameter("source");
			String destination=request.getParameter("destination");
			String  jounerydate=request.getParameter("jounerydate");
			String  noofperson=request.getParameter("noofperson");
			
		
					 bookTi  =new  Bookingticket();  
				 
				 bookTi.setName(name);
				 bookTi.setBusname(busname);
				 bookTi.setEmail(email);
				 bookTi.setContact(contact);
				 bookTi.setGender(gender);
				 bookTi.setSource(source);
				 bookTi.setDestination(destination);
				 bookTi.setJounerydate(jounerydate);
				 bookTi.setNoofperson(noofperson);
				 

				 if(bookTi!=null){
						//System.out.println("kkk");
					 RequestDispatcher rd=request.getRequestDispatcher("UserBookinginfo.jsp");
					     request.setAttribute("bookTi",bookTi);
					     rd.forward(request,response);
				 }
				 else{
					// RequestDispatcher rd=request.getRequestDispatcher("NewBookings.jsp");
				   //  request.setAttribute("bookTi","hello");
				   //  rd.forward(request, response);
					// System.out.println("else");
				 }


			}
			 
			 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			     doPost(request,response);
			 }

			}


		
				 