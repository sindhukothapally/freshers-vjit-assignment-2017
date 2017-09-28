<!DOCTYPE HTML>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.us.project.ConnectionPool"%>
<html>
<head>
<script>
function CheckPassword()   
{  
var inputtxt=document.getElementById("Password");
//var passw= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,12}$/;  
var passw= /^(?=.*[0-9])[a-zA-Z0-9!@#$%^&*]$/;  
if(inputtxt.value.length>=6 && inputtxt.value.length<=12){
if(inputtxt.value.match(passw))   
{   
alert('Correct, try another...');  
return true;  
}  
else  
{   
alert('ur password should contain atleast one upper case, lower case and one digit');  
return true;  
} }
else {
	alert("Password Should be At Least Minimum 6 and Max of 12 Characters");
	return true;
}
}  
</script>  
<title>Restaurant</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/responsiveslides.css">
<script src="js/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 2500,
			        speed: 600
			      });
			});
		  </script>
<!--light-box-->
<script type="text/javascript" src="js/jquery.lightbox.js"></script>
<link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen">
	<script type="text/javascript">
		$(function() {
			$('.gallery a').lightBox();
		});
   </script>
</head>
<body>
<%ConnectionPool connectionPool=new ConnectionPool();
Connection con=connectionPool.getConnection();
Statement st=con.createStatement();
String TestEmail="";
String TestPassword="";
String sql="select * from register";
ResultSet rs=st.executeQuery(sql);
while(rs.next()){
	TestEmail=rs.getString("Email");
	TestPassword=rs.getString("Password");
}
	

%>

<form name="form" action="Login" method="post" onsubmit="return CheckPassword()">
<input type="hidden" id="statusId" name="statusId" value=<%=request.getParameter("status")%>></input> 
<div class="header">
	<div class="wrap">
		<div class="header-top">
			<div class="logo" style="padding:4px 4px 0;">
			
				<a href="index.html"><img src="images/wall_logo.jpg" alt=""/></a>
                <span style="text-align: center;color: white;font-size:xx-large;float: right;padding-top: 28px;margin-left:250px; ">WALL CLIMBING</span>
                <p>
                
			</div>
			
			<div class="clear"></div>
		</div>
	</div>
	<div class="menu">
		<div class="wrap">
		
			<div class="top-nav">
			      <ul class="nav">
		            <li class="active"><a href="#">Home</a></li>
					<li><a href="#">Inventory</a></li>
					<li><a href="#">Classes</a></li>
					<li><a href="#">CheckIn</a></li>
					<li><a href="#">Membership</a></li>
                    <li><a href="#">Report</a></li>
                    <li><a href="#">Suspension</a></li>
                    <li><a href="#">Certification</a></li>
					<div class="clear"></div>
				 </ul>
				  
					<div class="clear"></div>
			</div>
	     </div>
	</div>
</div>
      <div class="wrap" style="background-color: blue;">
	<div class="main" >
		   <div class="contact">				
				<div class="col span_1_of_3" style="alignment-adjust:central;">
					<div class="contact_info">
			    	 	<br><br><br>
 <label style="color: white;">USERNAME</label>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="Username" id="Username"><br><br>
<label style="color: white;">PASSWORD</label>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="Password" id="Password"><br><br>

<div class="links">
<a href="ForgotPassword.jsp" style="color: white;padding-left:72px;">FORGET&nbsp&nbspPASSWORD</a><br><br>
<a href="ChangePassword.jsp" style="color: white;padding-left:72px;">CHANGE&nbsp&nbspPASSWORD</a><br><br>
</div>

<input type="submit" value="LOGIN"  class="button1"><br>
<label style="color: white;padding-left:142px;">Or</label><br>
<!-- <input type="submit" value="SIGNUP" id="SIGNUP" class="button2" /> -->
<a class="button2" href="Signup.jsp">SIGNUP</a>
</form>
      				</div>
				</div>				
				
  				<div class="clear"></div>			
	    </div>
	</div>
</div>
    		
	<div class="footer">
			<div class="wrap">
			<div class="footer-grids">
				<div class="footer-grid" style="padding:4px 4px 0;">
					<img src="images/wall_logo.jpg">
				</div>
                <div class="footer-grid footer-lastgrid">
					<h3>CONTACT US</h3>
					<div class="footer-grid-address">
						<p>Tel.800-255-9999</p>
						<p>Fax: 1234 568</p>
						<p>Email:<a class="email-link" href="#">xyz@gmail.com</a></p>
					</div>
				</div>
				
				<div class="clear"> </div>
			</div>
			<div class="copy-right">
			 <a href=""><img src="images/facebook.png"></a>
             <a href=""><img src="images/twitter.png"></a>
             <a href=""><img src="images/youtube.png"></a>
             <a href=""><img src="images/instagram.png"></a>
             <a href=""><img src="images/linkedin.png"></a>
		    </div>
		</div>
	</div>
</body>
<script>

if(document.getElementById("statusId").value =='no'){

alert("Please enter valid username and password");

document.getElementById("statusId").value='';
	}


</script>
</html>
