<!DOCTYPE HTML>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.us.project.ConnectionPool"%>
<html>
<head>
<title>Wall Climbing</title>
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
		            <li class="active"><a href="index.html">Home</a></li>
					<li><a href="inventory.html">Inventory</a></li>
					<li><a href="classes.html">Classes</a></li>
					<li><a href="checkin.html">CheckIn</a></li>
					<li><a href="membership.html">Membership</a></li>
                    <li><a href="report.html">Report</a></li>
                    <li><a href="suspension.html">Suspension</a></li>
                    <li><a href="certification.html">Certification</a></li>
					<div class="clear"></div>
				 </ul>
				  
					<div class="clear"></div>
			</div>
	     </div>
	</div>
</div>


</body>
</html>