<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
          
  <title>Contact Us</title>

         <link href='https://fonts.googleapis.com/css?family=Trade Winds' rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Redressed' rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="image1\css\Main.css">
        <link rel="icon" type="smallicon" sizes="48x48" href="image1\icon\myicon.ico">
    </head>
    <style>
div.polaroid {
  width: 350px;
  height: :250px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
  
  margin-right: 190px;

}

div.container {
  padding: 10px;
  font-family: verdana;
  opacity: 2px;
  transition:all  .5s ease;

}
#image1{
	width: 100%;
    

}
.text:hover{
	opacity: 1px;
  transition:all  .5s ease;
  background:rgba(0,0,0,.07);
  color: green;
  font-size: 20px;
  font-family: cursive;

}
.polaroid:img{
	height: 50%;
    float: left;
    
    
}
.heading h2,h1{
color: green;
  font-size: 30px;
  font-family: cursive;
text-align:center;
}
</style>
    <body>
         <div id="headerid">
                <div class="logo" style="position: relative;">
                    <img src="image1\images\logo2.png" style="position: absolute;top:-13px;left: -5px;width: 200px;height: 150px;">
                </div>
                
                </button>
                <h1><center style="padding-top: 10px;">Travel Easier</center></h1>
                <h2 style="text-align:center; color: #E81359; white-space: pre; font-family:Redressed;margin-top:-70px; font-size: 30px;"><i>                                  Book anywhere anytime...
                    </i></h2>
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
              </div>
              <div class="heading"><h1>Company Office Address</h1>
              <h2>G.E Road Nit Raipur C.G <br>Con:9685109896</h2>
              
              
                  </div>
        
        <div id="maindiv">
        </div>
        

        <center><h2>Our Team  </h2>  </center>
        <div style="display:flex; background-color: orange;">

                <div class="polaroid">
  <img src="satish1.jpg" id="image1" alt="Norway" >
  <div class="container">
  	<div class="text">
    <p>Satish Parmar <br>MCA,NIT Raipur</p>
   
  </div>
  </div>
  </div>
     <div class="polaroid">
  <img src="jitesh1.jpg" id="image1" alt="Norway" >
  <div class="container">
  	<div class="text">
    <p>Jitesh Kumar <br>MCA,NIT Raipur</p>
   
  </div>
  </div>
  </div>
     <div class="polaroid">
  <img src="ssmita.jpg" id="image1" alt="Norway" >
  <div class="container">
  	<div class="text">
    <p>Sushmita <br>MCA,NIT Raipur</p>
   
  </div>
  </div>
  </div>
     <div class="polaroid">
  <img src="anjni.jpg" id="image1" alt="Norway" >
  <div class="container">
  	<div class="text">
    <p>Anajali <br>MCA,NIT Raipur</p>
   
  </div>
  </div>
  </div>
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