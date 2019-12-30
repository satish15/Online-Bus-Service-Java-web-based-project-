<html>
    <head>
                <title>Feedback</title>

         <link href='https://fonts.googleapis.com/css?family=Trade Winds' rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Redressed' rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="image1\css\Main.css">
        <link rel="icon" type="smallicon" sizes="48x48" href="image1\icon\myicon.ico">
      <style>
      #maindiv{ 
      background-image: url(image1/images/travel87.jpg);
      }
      
         .sa1{
         font-family:"freight-display-pro";
          font-size: 25px;
          height:30%;  
    color: pink;
    font-weight: bold;
    padding-top: 50px;
    line-height: 4px;
    text-align: center;

     
      
    }
   textarea{
   color:green;
 
  width: 25%;
  padding-top:200 px;
  box-shadow: 10px 10px;
  -webkit-box-shadow: -33px -1px 44px -8px rgba(247,122,13,1);
-moz-box-shadow: -33px -1px 44px -8px rgba(247,122,13,1);
box-shadow: -33px -1px 44px -8px rgba(247,122,13,1);
border-style: solid;
  border-color: coral;
  background-color:white;
  font-size:20px;
    color:black;
    font-color:black;
  
     } 
      
     #fname{
     height:15%;
         border-radius: 25px;
         border-color:white;
         font-size:20px;
     }
     form{
     border-radius: 25px;
     }
     
       /* IMAGE */
       
       <style>
div.polaroid {
  width: 150px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.9);
  text-align: center;
  height: 50%;

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
  background:rgba(0,0,0,.05);
  color: green;
  font-size: 20px;
  font-family: cursive;

}
.polaroid:img{
	height: 50%;
    float: left;
    
    
}
.textarea{
bordor:2px solid red;
       
      
      </style>
    </head>
    <body>
         <div id="headerid">
                <div class="logo" style="position: relative;">
                    <img src="image1\images\logo2.png" style="position: absolute;top:-13px;left: -5px;width: 200px;height: 150px;">
                </div>
                <button class="btn" id="loginbtn"> 
                    <a href="Login.jsp">Login</a>
                </button>
                <button class="btn" id="signbtn">
                    <a href="Signin.jsp"> Sign Up</a>
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
                                    <a href="NewBookings.html">New Bookings</a>
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
		              <div class="sa1">
      <form action="Send" method="post">
         <label> First Name</label>
    <input type="text" id="fname" name="name" placeholder=" Enter Your name" required="required">
    <br>
    <br>
    <br>
    
    <label>Email</label>
    <input type ="text" id ="fname" name="email" placeholder="email" required="required">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
   
    

    

    <label for="subject">Subject</label>
     <textarea   name="feedback"  style=height:250px color:orange>write something</textarea>

    <button class="btn" id="loginbtn"> Submit
    </button>
  </form>
</div>        
<div id="maindiv">
        </div>
         <div id="footer">
            copyright &copy 2019, traveleasier.com, All Rights Reserved <br>
            <a href="web.jsp">Home</a>
            <a href="AboutUs.jsp">About Us</a>
            <a href="NewBookings.html">Bookings</a>
            <a href="E_Pass.html">Bus Pass</a>
            <a href="Feedback.jsp">Feedback</a>
            <a href="contactUs.jsp">Contact</a>
        </div>
    
    </body>
</html>