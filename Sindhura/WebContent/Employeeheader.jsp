<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="header1"></div>
<div id="Title">
<h2 class="headertitle" style="color: white;text-align:center;">WALL CLIMBING LOGIN&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<%
	String UserID = (String) session.getAttribute("UserID");
System.out.print(UserID);
%>
<%
	UserID = (session.getAttribute("UserID") == null)
			? "Null"
			: (String) session.getAttribute("UserID");

	if (UserID.equals("Null")) {
		session.invalidate();
%>

<%
	} else {
%>
<span style="text-align: right"><%=UserID %></span></h2>

 
<%} %> 
</div>
<div class="headerdown"></div>
<div class="menu_simple">
<ul>
<li><a href="home.jsp">HOME</a></li>
<li><a href="Inventory.jsp">INVENTORY</a></li>
<li><a href="#">CLASSES</a></li>
<li><a href="#">CHECKIN</a></li>
<li><a href="#">MEMBERSHIP</a></li>
<li><a href="#">REPORT</a></li>
<li><a href="#">SUSPENSION</a></li>
<li><a href="#">CERTIFICATION</a></li>
</ul>
<br />
</div>


</body>
</html> --%>