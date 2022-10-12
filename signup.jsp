<%@ page import="java.sql.*" %>
<%@page import ="javax.sql.*" %>   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<meta charset="ISO-8859-1">
<title>Sign Up JSP</title>
</head>
<body>
<center>
<%

Connection conn = null;
try{
	String url = "jdbc:mysql://localhost:3306/bloodbank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false";
	String username = "root";
	String password = "";
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url,username,password);
	String sql="insert into logindetails(username,password)values(?,?)";
    PreparedStatement preparestatement=conn.prepareStatement(sql);
    preparestatement.execute();
    out.println("Register Successful!");
    response.sendRedirect("index.html");
}catch(Exception e)
	{
		out.print(e);
	}

%>
</center>
</body>
</html>