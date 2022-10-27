<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor JSP</title>
</head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<body>
<center>
<%
String dname = request.getParameter("donorname");
String dgender = request.getParameter("gender");
String address = request.getParameter("address");
String date = request.getParameter("date");
String contact = request.getParameter("contact");
String quantity= request.getParameter("quantity");
String bg = request.getParameter("bg");
try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    java.sql.Connection con = DriverManager.getConnection
    ("jdbc:mysql://localhost:3306/bloodbank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","");
    String sql="insert into donor(id,name,gender,address,date,quantity,contact,bg)values(?,?,?,?,?,?,?,?)";
    PreparedStatement preparestatement=con.prepareStatement(sql);
    preparestatement.setString(1,null);
    preparestatement.setString(2,dname);
    preparestatement.setString(3,dgender);
    preparestatement.setString(4,address);
    preparestatement.setString(5,date);
    preparestatement.setString(6,quantity);
    preparestatement.setString(7,contact);
    preparestatement.setString(8,bg);
    preparestatement.execute();
	}
catch(SQLException e)
{
out.println("error in loading data");
out.println(e);
}
%>
<p>Donor</p>
<table border="1">
<tr>
<td>Donor ID</td>
<td>Donor Name</td>
<td>Donor Gender</td>
<td>Donor Address</td>
<td>Date Of Donation</td>
<td>Quantity Donated</td>
<td>Donor Contact</td>
<td>Donor Blood Group</td>
</tr>
</table>
<a href="menu.html">Go Back To Menu</a>
</center>
</body>
</html>