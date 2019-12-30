
<!-- saved from url=(0049)http://127.0.0.1:56093/JiAn/newweb.html?From=&To= -->
<%@page import="sis.com.bu.SignupUser"%>
<%@page import="java.util.List"%>
 
 <%@include file="sis_header.jsp" %>
 
 
       <div id="updiv">
            <br>
            <marquee direction="left" scrollamount="10" behavior="alternate" style="font-family: cursive; font-size: 20px; font-weight: bold;">People Don't Take Trips, Trips Take People</marquee>
            <br>
            <br>
            <br>
            <div id="updivprop">
            <center> Find Your Destination</center>
            </div>
            <br>
            <br>
               <center> 
                   <form action="Search"  method="post" style="font-family:freight-display-pro;font-display: block;font-size: 30px;">
                       <label for="from">From:</label>
                       <input id="from" name="source" type="text"  size="30px";>
                       <label for="to" >To: </label>
                       <input id="to"  name="destination" type="text"  size="30px";>
                        <input type="submit" value="Search">
                    </form>
                </center>
        </div>
        <div id="maindiv">
            <div id="div1">
                   <img class="mySlides" src="image1\images\volvo1.jpg" style="height: 250px; width: 100%;">
                   <img class="mySlides" src="image1\images\volvo2.jpg" style="height: 250px; width: 100%;">
                   <img class="mySlides" src="image1\images\volvo3.jpg" style="height: 250px; width: 100%;">
                   <img class="mySlides" src="image1\images\volvo4.jpg" style="height: 250px; width: 100%;">
<!--                   <img class="mySlides" src="volvo5.jpg" style="height: 250px; width: 100%;">-->
        
                    <script>
                        var slideIndex = 0;
                        carousel();
                        function carousel() 
                        {
                            var i;
                            var x = document.getElementsByClassName("mySlides");
                            for (i = 0; i < x.length; i++) 
                            {
                                x[i].style.display = "none"; 
                            }       
                            slideIndex++;
                            if (slideIndex > x.length) 
                            {
                                slideIndex = 1
                            } 
                            x[slideIndex-1].style.display = "block"; 
                            setTimeout(carousel, 5000); 
                        }
                    </script>
    	    </div>
              <div id="div2">
             <h2 style="color: #002552;"><center>Bulletins</center> </h2>
        
                   <marquee direction="up" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()" hspace="30px;" vspace="10px"> 
                   <center>
                    <strong> 
                    <a href="list.html" style="color:#fff;">Student Bus-Pass Offers</a>
                    <br>
                    <br>
                    <a href="list.html" style="color:#fff;">Special Buses On Festivals</a>
                    <br>
                    <br>
                    <a href="list.html" style="color:#fff;">Cancellation/Updation</a>
                    <br>
                    <br>
                    <a href="list.html" style="color:#fff;">Night Buses Availability</a>
                  </strong>
                       </center>
                </marquee>
    	   </div>
	   <div id="div3">
              <div  class="flip-box">
                        <div  class="flip-box-inner">
                            <div  class="flip-box-front">
                                <img src="image1\images\pass3.png" style="width:406px;height:250px">
                            </div>
                            <div  class="flip-box-back">
                                <h2 style="font-size: 30px; font-family:sans-serif;">Book Here</h2>
                                <a  href="E_Pass.html" style="font-size: 20px;color: blue;">click here</a>
                            </div>
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