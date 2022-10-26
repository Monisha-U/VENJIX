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

<form method="post" action="donoraction.jsp">
Contact:<input type="number" name="contact" /><br><br>

<input type="submit" value="Submit" />
<input type="reset" value="Cancel" />
</form><br><br>
</center>
</body>
</html>