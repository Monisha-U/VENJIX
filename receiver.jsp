<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Receiver</title>
	<header style="font-size:50px" align="center">Blood Bank Management System</header>
</head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<body>
<p style="text-align:center;"><img style="width:15%;height:15%;" src="logo16.jpg">
<center>
<form method="post" action="receiveraction.jsp">
Name:<input type="text" name="receivername" /><br><br>
Date:<input type="date" name="receiverdate" /><br><br>
Gender:<input type="text" name="receivergender" /><br><br>
Quantity(ml):<input type="number" name="quantity" /><br><br>
Blood Group:
<select name="receiverbg">
<option>A+</option>
<option>A-</option>
<option>B+</option>
<option>B-</option>
<option>AB-</option>
<option>AB+</option>
<option>O-</option>
<option>O+</option>
</select><br><br>
}
catch(Exception e)
{
out.println(e);
}
%>
<input type="submit" value="Submit" />
<input type="reset" value="Cancel" />
</form><br><br>
<a href="menu.html">Go Back To Menu</a>
</center>
</body>
</html>
