
<!-- saved from url=(0049)http://127.0.0.1:56093/JiAn/newweb.html?From=&To= -->
<%@page import="sis.com.bu.SignupUser"%>
<html>
    <head>
<!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>sis_header</title>
<!--		<link rel="stylesheet" href="./NewWeb Page_files/icon"> -->
        <link href='https://fonts.googleapis.com/css?family=Trade Winds' rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Redressed' rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="image1\css\webstyle.css">
        <link rel="icon" type="smallicon" sizes="48x48" href="image1\icon\myicon.ico">
        
         <style>
    #updiv{
    background-image: url(image1/images/b14.jpg);
    height:90%;
    }
         </style>
    </head>
<body>
    
     
    
    
              <div id="headerid">
             
      
         
                <div class="logo" style="position: relative;">
                        <img src="image1\icon\logo2.PNG" style="position: absolute;top:-13px;left: -5px;width: 200px;height: 150px;">
             
             </div>
              
           <h1><center style="padding-top: 10px;">Travel Easier</center></h1>
          <h2 style="text-align:center; color: green; white-space: pre; font-family:Redressed;margin-top:-55px; font-size: 30px;"><i>                                Book anywhere anytime...
                    </i></h2>
                  
                    
                    
				<%
				SignupUser user  = null;
				if(session.getAttribute("user")!=null){ 
				  user =(SignupUser) session.getAttribute("user");
				%>
				<br>
				<br>
				<h4>welcome :- <%=user.getName() %></h4>
				                     
			
				<%}else{%>
				
		                <a href="Login.jsp">
		                <button class="btn" id="loginbtn"> 
		                    Login
		                </button>
		                </a>
		                
		                 <a href="SignIn.jsp">
		                <button class="btn" id="signbtn">
		                    Sign Up
		                </button>
		                </a>
				<%} %>                
                
        </div>
        
             <div class="navbar">
                      <div class="dropdown">
                              <a href="web.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                      </div>
 	                  <div class="dropdown">
		                      <a href="AboutUs.jsp"><i class="fa fa-search" aria-hidden="true"></i> About Us</a>
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
     			                    <a href="E_pass.jsp">New E-Pass</a>
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
              </div>
<a href="logout.jsp">Logout
			</a></h2>

