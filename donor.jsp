<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Donor</title>	
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
<a href="menu.html">Go Back To Menu</a>
</center>
</body>
</html>