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
</select><br><br>
<%
ResultSet doctorid=null;
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection
("jdbc:mysql://localhost:3306/bloodbank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","");
Statement fetchdoctorname=con.createStatement() ;
doctorid=fetchdoctorname.executeQuery("select id from doctor");
%>
Select Doctor id:
<select name="docidlist">
<%  while(doctorid.next()){ %>
<option><%= doctorid.getString(1)%></option>
<% } %>
</select><br><br>
<%
}
catch(Exception e)
{
out.println(e);
}
%>


</form><br><br>
<a href="menu.html">Go Back To Menu</a>
</center>
</body>
</html>