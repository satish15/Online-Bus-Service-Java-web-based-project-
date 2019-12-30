package sis.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.bu.SignupUser;
import sis.com.mail.SendMail3;

public class ForgetPasswordUser1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public ForgetPasswordUser1() {
        super();
           }
        String OTP="";
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter pw=response.getWriter();
			Random rand=new Random();
			response.setContentType("text/html");
			RequestDispatcher rd=null;
		
			String email=request.getParameter("email");
			String name=request.getParameter("name");
             Connection con=null;
             Statement pstmt=null;
             ResultSet rs=null;
             String password=null;
             System.out.println(email);
             System.out.println(name);
			
			SignupUser sign=new  SignupUser();
			sign.setEmail(email);
			for(int i=1;i<=6;i++){
				int no=rand.nextInt(9);
			   OTP=no+""+OTP;
			}
			
			
		SendMail3 send= new SendMail3();
		boolean yes=false;
		 
		 
		 try {
			String sql ="select *from signUp where name='"+name+"'";
			rs=pstmt.executeQuery(sql);
			if(rs.next()){
				password=rs.getString("password");
				//System.out.println(password);
				password="a";
				String sql1="update signUp set password='"+password+"'"+"where name='"+name+"'";
             	pstmt=con.createStatement();
             	pstmt.executeUpdate(sql1);
             	System.out.print(password);
             	
				
			}
			
			
			yes	=send.sendMail3(email,password);
			} catch (Exception e1) {
				pw.print("<h1>Error please cheack your email id or connection..<h1>");
				e1.printStackTrace();
				return;
			}
		 if(yes){
				System.out.println("Mail send successfully");
			}
		 request.setAttribute("signData",sign);
			rd=request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
				
			}
	
	}

