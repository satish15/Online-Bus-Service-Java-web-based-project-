package sis.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//import sis.com.bu.User;
import sis.com.bu.SignupUser;;


public class MyLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyLogin() {
        super();
        
    }
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String email=request.getParameter("email");
	String password=request.getParameter("password");

	PrintWriter out=response.getWriter();  
	 Connection con=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs=null;
	 SignupUser userObject  = null;

		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@localhost:1521:XE";
			String dbuser="system";
			String dbpassword="123456789";
			con  = DriverManager.getConnection(url, dbuser, dbpassword);
			String sql="select * from signUp where email=? AND password=?";
	 
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,email);
			pstmt.setString(2,password);
			rs  =pstmt.executeQuery();
			if(rs.next()) {
		       
				String name = rs.getString("name");
				userObject = new SignupUser();
			
				userObject.setEmail(email);
				userObject.setName(name);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(con!=null){
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
			
		
		if(userObject!=null) {
			HttpSession session = request.getSession();
		
			session.setAttribute("user", userObject);
			response.sendRedirect("web.jsp");
			
		}else{
			request.setAttribute("msg", "please fil all field");
			response.sendRedirect("Login.jsp");
		   }
		 }
      }	

	

	
	
	
	
	


