<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Receiver JSP</title>
</head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<body>
<center>
<%
//int rid = 2000;
String rname = request.getParameter("receivername");
String rgender = request.getParameter("receivergender");
String raddress = request.getParameter("receiveraddress");
String rdate = request.getParameter("receiverdate");
String rcontact = request.getParameter("receivercontact");
String rbg = request.getParameter("receiverbg");
String docid = request.getParameter("docidlist");
String quantity = request.getParameter("quantity");
try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    java.sql.Connection con = DriverManager.getConnection
    ("jdbc:mysql://localhost:3306/bloodbank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false","root","");
    String sql="insert into receiver(id,receivername,gender,address,date,quantity,contact,bg,doctorid)values(?,?,?,?,?,?,?,?,?)";
    PreparedStatement preparestatement=con.prepareStatement(sql);
    preparestatement.setString(1,null);
    preparestatement.setString(2,rname);
    preparestatement.setString(3,rgender);
    preparestatement.setString(4,raddress);
    preparestatement.setString(5,rdate);
    preparestatement.setString(6,quantity);
    preparestatement.setString(7,rcontact);
    preparestatement.setString(8,rbg);
    preparestatement.setString(9,docid);
    preparestatement.execute();
	}
catch(SQLException e)
{
out.println("error in loading data");
out.println(e);
}
%>
<a href="menu.html">Go Back To Menu</a>
</center>
</body>
</html>