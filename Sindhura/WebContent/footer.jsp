
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</html>