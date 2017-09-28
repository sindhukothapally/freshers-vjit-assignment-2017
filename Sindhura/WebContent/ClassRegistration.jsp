<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CheckIn Information</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/responsiveslides.css">
<script src="js/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>

</head>

<form name="ClassRegForm"  method="post" onsubmit="return validateForm()">
<input type="hidden" id="CheckboxId" name="CheckboxId" value= <%=request.getParameter("selVal")%>/>
<input type="hidden" id="memVal" value=<%=request.getAttribute("value") %>></input>
<% request.setAttribute("value",""); %>
<script type="text/javascript">

function logout(){
	
	document.ClassRegForm.method="get";
	document.ClassRegForm.action="LogoutUrl";
    document.ClassRegForm.submit();
}

function validateForm(){
	var fname=document.getElementById("fname").value;
	var lname=document.getElementById("fname").value;
	var emailId=document.getElementById("emailId").value;
	var MembId=document.getElementById("MembId").value;
	
	if(document.getElementById("fname").value == "" || fname.length==0){
		alert("Please enter First Name");
		return false;
	}else if(document.getElementById("lname").value == "" || lname.length==0){
		alert("Please enter Last Name");
		return false;
	}else if(document.getElementById("emailId").value == "" || emailId.length==0){
		alert("Please enter Email");
		
		return false;
	}else if(document.getElementById("MembId").value == "" || MembId.length==0){
		alert("Please enter Membership Id");
		
		return false;
	}else {
		return true;
	}
	
}

function clickFrm() {
	//alert("22222");
	//alert(document.getElementById("CheckboxId").value);
	alert(document.ClassRegForm.CheckboxId.value);
	    document.ClassRegForm.action="ClassReg";
	 	document.ClassRegForm.submit();
		}

</script>
<body>
<div class="header">
	<div class="wrap">
		<div class="header-top">
			<div class="logo" style="padding:4px 4px 0;">
				<a href="index.html"><img src="images/wall_logo.jpg" alt=""/></a>
			</div>
			<div>
			<div style="text-align: right;color: white; padding-right: 7%;padding-top: 4%;"><%=session.getAttribute("name")%> <input name="logButton"  type="button" value="Logout" onclick="logout();"></div></h2>
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
					<li><a href="Classes.jsp">Classes</a></li>
					<li><a href="NewCheckIn.jsp">CheckIn</a></li>
					<li><a href="Membership.jsp">Membership</a></li>
                    <li><a href="ReportProcess.jsp">Report</a></li>
                    <%
                    if(session.getAttribute("name") != null){
                    if(session.getAttribute("name").equals("ADMIN")){
                    %>
                    <li><a href="Suspension.jsp">Suspension</a></li>
                    <%}} %>
                    <li><a href="certification.html">Certification</a></li>
					<div class="clear"></div>
				  </ul>
				
				
					<div class="clear"></div>
				</div>
	       </div>
	</div>
</div>
<div class="wrap">
	<div class="main">
		    <div class="page-not-found" style="padding-left: 15%;">
<label style="color: white;" >FIRSTNAME</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="fname" id="fname" ><br><br>
<label style="color: white;">LASTNAME</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="lname" id="lname"><br><br>
<label style="color: white;">EMAIL</label>&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="emailId"  id="emailId"><br><br>
<label style="color: white;">MEMBERSHIP ID</label>&nbsp;&nbsp;&nbsp;
<input type="text" name="MembId" id="MembId"><br><br>

<input type="submit" class="button1"  value ="cancel" /> <input type="submit" class="button1"  value ="PAY" />
<input type="submit" class="button1" align="center" onclick="clickFrm();" value ="REGISTER" />
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
<script type="text/javascript">

if(document.getElementById("memVal").value =='no'){
	
	alert("please enter correct MemberShipId");
	document.getElementById("memVal").value="";
}



</script>


</form>

</html>