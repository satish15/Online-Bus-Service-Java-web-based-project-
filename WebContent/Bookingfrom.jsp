<html>
    <head>
        <title>user car Booking</title>
         <link href='https://fonts.googleapis.com/css?family=Trade Winds' rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Redressed' rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" type="smallicon" sizes="48x48" href="image1\icon\myicon.ico">
        <link rel="stylesheet" type="text/css" href="image1\css\animation.css">

<!--        <link rel="stylesheet" type="text/css" href="Main.css">-->
   <style>
#maindiv{
        background-image: url(image1/images/travel.jpg);
      height:110%;
      </style>
    </head>
    <body>
         <div id="headerid">
                <div class="logo" style="position: relative;">
                    <img src="image1\images\logo2.png" style="position: absolute;top:-13px;left: -5px;width: 200px;height: 150px;">
                </div>
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
        
        <h3>Bus ticket Registraction</h3>
            <form action="BookingControllar1" method="post">
            <input type="text" placeholder="Username" name="name">
            <input type="text" placeholder="Busname" name="busname">
            <input type="tel" placeholder="contact Number" name="contact" pattern="[0-9]{10}" required>
            Male <input type="radio" value="Male" name="gender" checked>
            Female <input type="radio" value="Female" name="gender">
            <br>
            <br>
            <input type="email" placeholder="Email" Name="email"   >
             Source  <input type ="text"  name="source">
            Destination <input type="text" name ="destination">
            <br>
       <div>
    
       DATE  <input type="date"  name="jounerydate" placeholder="dd-mm-yy"  min="2017-04-01" max="2017-04-20" required>
       <br>
    
      </div>
               <br>
            <select required>
                <option value="1" disabled selected hidden>Number of Person Booking Bus tickets</option>
                <option value="noofperson"  name="noofperson">1</option>
                <option value="noofperson"  name="noofperson">2</option>
                <option value="noofperson"   name="noofperson">3</option>
                <option value="noofperson"    name="noofperson">5</option>

               <input type="submit" value="submit">

 </form>
     </div>
        <div id="footer">
            copyright &copy 2019, traveleasier.com, All Rights Reserved <br>
             <a href="web.html">Home</a>
            <a href="AboutUs.html">About Us</a>
            <a href="NewBookings.html">Bookings</a>
            <a href="E_Pass.html">Bus Pass</a>
            <a href="Feedback.jsp">Feedback</a>
            <a href="contactUs.jsp">Contact</a>
        </div>
        
       
</script>
    </body>
</html>