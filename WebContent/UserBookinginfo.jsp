<%@page import="sis.com.bu.Bookingticket"%>
<%@page import="java.util.List"%>
<html>
    <head>
        <title>UserBooking</title>
         <link href='https://fonts.googleapis.com/css?family=Trade Winds' rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Redressed' rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" type="smallicon" sizes="48x48" href="image1\icon\myicon.ico">
        <link rel="stylesheet" type="text/css" href="image1\css\animation.css">
<link href='https://fonts.googleapis.com/css?family=Faster One' rel='stylesheet'>
      
       <style type="text/css">
       
       strong{
       padding:200px;
      margin-bottom: 80px;
       font-size:25px;
        color:black; 
        align:center;
        width:30%;
        font-weight: bold;
             font-family: 'Sofia';font-size: 40px; 
             
       }
       .m1{
       border-radius: 25px;
         border-color:white;
         font-size:20px;
       background-image: url(image1/images/b21.jpg);
        border-spacing: 20px;
        height:110%;
        
        
       }
       .m1,table,th{
       margin-top]: 80px;
       }
       
       
       
       
       
       
       </style>


    </head>
    <body>
         <div id="headerid">
                <div class="logo" style="position: relative;">
                    <img src="image1\images\logo2.png" style="position: absolute;top:-13px;left: -5px;width: 200px;height: 150px;">
                </div>
                <button class="btn" id="loginbtn"> 
                    <a href="web.jsp">Louout</a>
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
        
        <%
        Object obj=request.getAttribute("bookTi");

        Bookingticket stt=(Bookingticket)obj;
        %>
        <%=stt %>
        <strong>Your Registration is succesfully Done</strong>
        <div class="m1">
        <table style="font-size:22px; color:white; " align="center"  >
              
            
             

           
           
           
           
           
                                       
               
              <tr>
                 <th>Name</th>
                 <td><%=stt.getName() %></td>
          </tr>
          <tr>                      
                 <th>Bus Name</th>
                  <td><%=stt.getBusname() %></td>
          </tr>
           <tr>
                 <th>Email</th>
             <td><%=stt.getEmail() %></td> 
           </tr>
            <tr>
                 <th>Contect</th>
                 <td><%=stt.getContact() %></td>    
             </tr>
                 <tr>
                 <th>Gender</th>
                <td><%=stt.getGender()%></td>                 
            </tr>
            <tr>
                 <th>Sourcer</th>
                 <td><%=stt.getSource() %></td>
                                  
             </tr>
            <tr>
                 <th>Destination</th>
                 <td><%=stt.getDestination() %></td>
                 
            </tr>
            <tr>
                 <th>Jounerydate</th>
                 <td><%=stt.getJounerydate() %></td>
                 </tr>
            <tr>
                 <th>Noofperson</th>
                  
             <td><%=stt.getNoofperson()%>             
            
            </tr>
            
                           
             
             
             
             </table>
       
        </div>
        
        
        
       
        
        
        
        
        
        
        <div id="footer">
            copyright &copy 2019, traveleasier.com, All Rights Reserved <br>
             <a href="web.html">Home</a>
            <a href="AboutUs.html">About Us</a>
            <a href="NewBookings.html">Bookings</a>
            <a href="E_Pass.html">Bus Pass</a>
            <a href="Feedback.html">Feedback</a>
            <a href="contactUs.html">Contact</a>
        </div>
        
       
</script>
    </body>
</html>
        
        
        
        
        
        