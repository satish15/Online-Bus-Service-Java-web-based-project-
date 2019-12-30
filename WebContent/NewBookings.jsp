<%@page import="java.util.List"%>
<%@page import="sis.com.bu.Searching"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <head>
                <title>New Bookings</title>

         <link href='https://fonts.googleapis.com/css?family=Trade Winds' rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Redressed' rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="image1\css\Main.css">
        <link rel="icon" type="smallicon" sizes="48x48" href="image1\icon\myicon.ico">
        <style type="text/css">
      table, th, td {
  border: 2px solid green;
  padding: 15px;
}
table {
  border-spacing: 20px;
}
        </style>
    </head>
    <body>
         <div id="headerid">
                <div class="logo" style="position: relative;">
                    <img src="image1\images\logo2.png" style="position: absolute;top:-13px;left: -5px;width: 200px;height: 150px;">
               
                
                <h1><center style="padding-top: 10px;">Travel Easier</center></h1>
                <h2 style="text-align:center; color: #E81359; white-space: pre; font-family:Redressed;margin-top:-70px; font-size: 30px;"><i>                                  Book anywhere anytime...
                    </i></h2>
        </div>
        
         <div class="navbar">
                      <div class="dropdown">
                              <a href="web.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                      </div>
 	                  <div class="dropdown">
		                      <a href="AboutUs.html"><i class="fa fa-search" aria-hidden="true"></i> About Us</a>
		              </div>
                      <div class="dropdown">
                                <i class="fa fa-bus" aria-hidden="true"></i> Bookings
    		                <div class="dropdown-content">
                                    <a href="NewBookings.jsp">New Bookings</a>
                                    <a href="E_ticket.html">Print E-Ticket</a>
     			                    <a href="Cancel_Ticket.html">Cancel Booking</a>
      			                    <a href="RescheduleBooking.html">Reschedule Bookings</a>
                                    <a href="Refund.html">Check refund Status</a>
                            </div>
 	                  </div>
    	              <div class="dropdown">
                          <i class="fa fa-drivers-license-o" aria-hidden="true"></i>  Bus Pass
   		                    <div class="dropdown-content">
     			                    <a href="E_Pass.html">New E-Pass</a>
      			                    <a href="Renewal.html">Renewal</a>
     			                    <a href="cancellation.html">Cancellation</a>
   		                    </div>
  	                 </div> 
	                  <div class="dropdown">
                          <a href="Feedback.jsp"><i class="fa fa-comment" aria-hidden="true"></i>  Feedback</a>
	                  </div>
	                  <div class="dropdown">
                          <a href="contactUs.jsp"><i class="fa fa-phone" aria-hidden="true"></i>  Contact</a>
		             </div>
              </div><br>
              <br>
              <br>




         <%
        Object obj=request.getAttribute("search");

        List<Searching> sh=(List<Searching>)obj;
        
       //out.println(sh.size());
        %>
             <table>
              <strong><center>Bus Time and Schudle</center></strong><br>
              <strong><center>No Of bus Available is <%=sh.size()%> </center></strong>
              <tr>
             
             
              <th>Bus ID</th>
              <th>Bus Name</th>
              <th>Source</th> 
              <th>destination</th>
              <th>Arrival</th>
              <th>Departure</th>              
              <th>Total Distance</th>
              <th>Book Here</th> 
              
               
              
              </tr>
              
              
          <%for(Searching stt:sh){ %>
        <tr style="font-size:22px; color:green; " align="center"%>
       <td><%=stt.getId()%></td>
       <td><%=stt.getBusname()%>
       <td><%=stt.getSource() %>
       <td><%=stt.getDestination()%>
       <td><%=stt.getArrival()%>
       <td><%=stt.getDeparture()%>
       <td><%=stt.getTotalkm() %>  
     <td> <a  href="Bookingfrom.jsp">book now </td> </a>
       
           </tr>
           
          
          <%}%>   
               
              
              
              </table>
             
              
              
              
              
             
              
        <div id=   "maindiv">
        </div>
         <div id="footer">
            copyright &copy 2019, traveleasier.com, All Rights Reserved <br>
            <a href="web.jsp">Home</a>
            <a href="AboutUs.jsp">About Us</a>
            <a href="NewBookings.jsp">Bookings</a>
            <a href="E_Pass.html">Bus Pass</a>
            <a href="Feedback.jsp">Feedback</a>
            <a href="contactUs.jsp">Contact</a>
        </div>
    
    </body>
</html>
</head>
<body>

</body>
</html>