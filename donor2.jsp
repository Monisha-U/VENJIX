<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Donor</title>
	<header style="font-size:50px" align="center">Blood Bank Management System</header>
	
</head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<body>
<p style="text-align:center;"><img style="width:15%;height:15%;" src="logo13.jpg">
<center>

<form method="get" action="donoraction.jsp">

Date:<input type="date" name="date" /><br><br>
Quantity(ml):<input type="number" name="quantity" /><br><br>
Blood Group:
<select name="bg">
<option>A+</option>
<option>A-</option>
<option>B+</option>
<option>B-</option>
<option>AB-</option>
<option>AB+</option>
<option>O-</option>
<option>O+</option>

</form>


<a href="menu.html">Go Back To Menu</a>
</center>
</body>
</html>