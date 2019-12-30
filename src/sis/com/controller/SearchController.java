package sis.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
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




import sis.com.bu.Searching;
import sis.com.util.SisDbUtil;


public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public SearchController() {
        super();
            }
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  PrintWriter pw=response.getWriter();
  Connection con=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;
  Searching search=null;
    
  List<Searching> list=new ArrayList<Searching>();
   String source =request.getParameter("source");
  String destinaction =request.getParameter("destination");
  //System.out.println(source+""+destinaction);
  if(source.isEmpty()|| destinaction.isEmpty()){
   response.sendRedirect("web.jsp");
  }else{
   try{
	 con=SisDbUtil.getConnection();
	 String sql="select * from bussearch where source=? and destination=?";
	 //String sql="select * from bussearch where source like 'b%' and destination like ='in%'";
	 pstmt=con.prepareStatement(sql);
     pstmt.setString(1,source);
     pstmt.setString(2,destinaction);
      rs =pstmt.executeQuery();
      System.out.println("erfgg");
	 while(rs.next()){
		
		 Long  id=rs.getLong("id");
		 String busname=rs.getString("busname");
		 source =rs.getString("source");
	     String	 destination=rs.getString("destination");
		 String  arrival=rs.getString("arrival");
		 String departure=rs.getString("departure");
		 String totalkm=rs.getString("totalkm");
		 
		 search = new Searching();
		 
		 search.setId(id);
		 search.setBusname(busname);
		 search.setSource(source);
		 search.setDestination(destination);
		 search.setArrival(arrival);
		 search.setDeparture(departure);
		 search.setTotalkm(totalkm);
		 
		 list.add(search); 
		 
		 
		 
	 }
		
	    
		
		
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
			RequestDispatcher rd=request.getRequestDispatcher("NewBookings.jsp");
		     request.setAttribute("search",list);
		     rd.forward(request, response);
	 }
	 else{
		 RequestDispatcher rd=request.getRequestDispatcher("NewBookings.jsp");
	     request.setAttribute("search",search);
	     rd.forward(request, response);
	 }


}
 }
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     doPost(request,response);
 }

}

