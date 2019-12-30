package sis.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.bu.SignupUser;
import sis.com.util.SisDbUtil;


public class ViewRegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ViewRegisterUser() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw=response.getWriter();
	     
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			SignupUser  user=null;
			List<SignupUser> list=new ArrayList<SignupUser>();
			
				
			     String name = request.getParameter("Name");
				 String email = request.getParameter("Email");
				 String gender = request.getParameter("Gender");
				 String password = request.getParameter("Password");
				 String conpassword = request.getParameter("ConPassword");
				 String contect = request.getParameter("Contact");
				 String security = request.getParameter("Security");
				
				 try {
				
					 con=SisDbUtil.getConnection();	
					 
					 String sql = "insert into signUp"
							+ "(name,gender,email,password,conpassword,security,contect) values(?,?,?,?,?,?,?)";
				 pstmt=con.prepareStatement(sql);
				 pstmt.setString(1,name);
				 pstmt.setString(2,gender);
				 pstmt.setString(3,email);
				 pstmt.setString(4,password);
				 pstmt.setString(5,conpassword);
				 pstmt.setString(6,security);
				 pstmt.setString(7,contect);
				 int r=pstmt.executeUpdate();
				/*if(r==1)
					 pw.print("You have Successful register");
				 else
					 pw.print("not");*/
					 
					
					
				
			} catch(SQLException e) {
				e.printStackTrace();
			}finally{
				try {
					SisDbUtil.closeConnection(con);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} 
	   	
				 if(list!=null){
						RequestDispatcher rd=request.getRequestDispatcher("BookingSuccessful.jsp");
					     request.setAttribute("User",list);
					     rd.forward(request, response);
				 
	}
				 /*else{
						 RequestDispatcher rd=request.getRequestDispatcher("NewBookings.jsp");
					     request.setAttribute("User",list);
					     rd.forward(request, response);
						 System.out.println("else");
					 }*/



}
}   