<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","root"); 
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM test;");
while(rs.next()){
	PrintWriter writer = response.getWriter();
	writer.print(rs.getString(1)+rs.getInt(2));
}
%>
</body>
</html>