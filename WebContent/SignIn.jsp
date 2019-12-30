<html>
    <head>
        <title>Sign Up</title>
         <link href='https://fonts.googleapis.com/css?family=Trade Winds' rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Redressed' rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" type="smallicon" sizes="48x48" href="image1\icon\myicon.ico">
        <link rel="stylesheet" type="text/css" href="image1\css\animation.css">

<!--        <link rel="stylesheet" type="text/css" href="Main.css">-->
<style>

        #maindiv{
        background-image: url(image1/images/volvo2.jpg);
      height:90%;
             	 background-size: fixed;
      
        }





</style>
    </head>
    <body>
         <div id="headerid">
                <div class="logo" style="position: relative;">
                    <img src="image1\images\logo2.png" style="position: absolute;top:-13px;left: -5px;width: 200px;height: 150px;">
                </div>
                <button class="btn" id="loginbtn"> 
                    <a href="Login.jsp" >Login</a>
                </button>
                <button class="btn" id="signbtn">
                    <a href="SignIn.jsp"> Sign Up</a>
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
        
        <div id="maindiv">
        <div id="signdiv">

            <h3>Sign Up</h3>
            <form action="RegisterUser" method="post">
            <input type="text" placeholder="Username" name="Name">
            <input type="tel" placeholder="Contact Number" name="Contact" pattern="[0-9]{10}" required>
            Male <input type="radio" value="Male" name="Gender" checked>
            Female <input type="radio" value="Female" name="Gender">
            <br>
            <br>
            <input type="email" placeholder="Email" Name="Email"   >
            <input type="password" placeholder="Password"  name="Password"       >
            <input type="password" placeholder="Confirm Password" Name="ConPassword" >
            <select required>
                <option value="" disabled selected hidden>Select your security Question</option>
                <option value="Mname">Mother's Name</option>
                <option value="bplace">Birthplace</option>
                <option value="bwriter">Favourite Book writer</option>
                <option value="fcolor">Favourite Color</option>
            </select>
            <input type="text" placeholder="Security Answer" required Name="Security"      >
            <br>
            <br>
            <input type="submit" value="Sign Up">
        </div>
        </form>
     </div>
        <div id="footer">
            copyright &copy 2019, traveleasier.com, All Rights Reserved <br>
             <a href="web.jsp">Home</a>
            <a href="AboutUs.html">About Us</a>
            <a href="NewBookings.html">Bookings</a>
            <a href="E_Pass.html">Bus Pass</a>
            <a href="Feedback.html">Feedback</a>
            <a href="contactUs.html">Contact</a>
        </div>
    </body>
</html>