<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page session="true" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/responsiveslides.css">
<script src="js/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script type="text/javascript" src="js/jquery.lightbox.js"></script>
<link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen">
<title>Insert title here</title>
</head>

<body>
<form name="EmpFrm" method="post" >
<div class="header1"></div>
<div id="Title">
<h2 class="headertitle" style="color: white;text-align:center;">WALL CLIMBING LOGIN&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

<%
	

	if (session.getAttribute("name") == null ) {
		/* session.invalidate(); */
%>
<span style="text-align: right"><%=session.getAttribute("name")%> <input name="logButton"  type="button" value="Logout" onclick="logout();"></span></h2>

<%
	} else {
%>
<span style="text-align: right"><%=session.getAttribute("name")%> <input name="logButton"  type="button" value="Logout" onclick="logout();"></span></h2>


 
<%} %> 
</div>
<script>
function logout(){
	
	document.EmpFrm.method="get";
	document.EmpFrm.action="LogoutUrl";
    document.EmpFrm.submit();
}

function placeOrder(){
	
	document.EmpFrm.method="post";
	document.EmpFrm.action="FoodUrl";
    document.EmpFrm.submit();
}
</script>
<div class="headerdown"></div>
<%-- <div class="menu_simple">
<ul>
<li><a href="home.jsp">HOME <%=request.getAttribute("UserId")%> 121212</a></li>
<li><a href="Inventory.jsp">INVENTORY</a></li>
<li><a href="#">CLASSES</a></li>
<li><a href="#">CHECKIN</a></li>
<li><a href="#">MEMBERSHIP</a></li>
<li><a href="#">REPORT</a></li>
<li><a href="#">SUSPENSION</a></li>
<li><a href="#">CERTIFICATION</a></li>
</ul>
<br />
</div> --%>

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

	
  				<div class="wrap">
	<div class="main">
		    <div class="page-not-found" style="padding-left: 15%;">
		   <label style="color: white;">Food Type</label>&nbsp;&nbsp;&nbsp;&nbsp;
		   <select id="foodId" name="foodName" onchange="vegClick()">
		   <option id="VegId" name="VegName">Veg</option>
		   <option id="NonVegId" name="NonVegName">Non-Veg</option>
		   </select>
		    </div>
		    
		    <div class="page-not-found" style="display:block;padding-left: 15%;">
		   <label style="color: white;">Starter</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   <input type="text" name="starter" id="StarterId">&nbsp;&nbsp;&nbsp;<label style="color: white;"> Starter Items</label> <input type="text" name="startItem" id="startItemId"><br><br>
           <label style="color: white;">Rice Item</label>&nbsp;
           <input type="text" name="RiceItem" id="RiceItemId">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label style="color: white;">Rice Items</label> <input type="text" name="riceName" id="riceIdName"><br><br>
           <label style="color: white;">Drink</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="text" name="DrinkName" id="DrinkId">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label style="color: white;">Drink Items</label> <input type="text" name="drinkItemName" id="drinkItemId"><br><br>
		  <input type="submit" value="Place Order"  class="button2" onclick="placeOrder()"><br>
		    </div>
		    </div>
		    </div>
	</div>


</div>
</form>
</body>
</html>