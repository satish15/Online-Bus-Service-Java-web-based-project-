package sis.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sis.com.bu.SignupUser;
import sis.com.mail.SendMail3;

public class ForgetPasswordUser extends HttpServlet {

	String OTP="";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Random rand=new Random();
		PrintWriter pw=response.getWriter();
		String email = request.getParameter("email");
		String name = request.getParameter("name");
	
		Connection con = null;
		Statement pstmt = null;
		ResultSet rs = null;
		//SendMail send=null;
		String password=null;
		
	//	System.out.println(email);
		SendMail3 send = new SendMail3();
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String user = "system";
			String password1 ="123456789";
			con = DriverManager.getConnection(url,user,password1);
			pstmt = con.createStatement();
			String sql="select * from signUp where name='"+name+"'";
			// String sql="SELECT  email FROM owner WHERE email = '"+email+"'";
			rs = pstmt.executeQuery(sql);
			
			if(rs.next()) {
				
				password1=rs.getString("password");
				//System.out.println(password1);
			}
			password1="a";
			String sql1="update signUp set password ='"+password1+"'"+ "where name='"+name+"'" ;
			pstmt=con.createStatement();
			pstmt.executeUpdate(sql1);
			//System.out.println(password1);







        SignupUser sign=new  SignupUser();
			sign.setEmail(email);
			for(int i=1;i<=5;i++){
				int no=rand.nextInt(9);
			   OTP=no+""+OTP;
			   
			}
			boolean    yes	=SendMail3.sendMail3(email,OTP);
			System.out.println(yes);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return;
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally{
			try {
				  if (con!=null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
  /* if(password!=null){
	   System.out.println(password);
	   try {
		   pw.println("Hello");
		 System.out.println(email);
		   System.out.println(password);
    //boolean b =	SendMail3.sendMail3(email,password);
		boolean    yes	=SendMail3.sendMail3(email,password);
	} catch (Exception e) {
		e.printStackTrace();
	}
   }*/
	}

	
}