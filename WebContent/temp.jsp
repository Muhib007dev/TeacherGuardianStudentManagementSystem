<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>user_id</b></td>
<td><b>Password</b></td>
<td><b>Name</b></td>
<td><b>Name</b></td>
<td><b>Name</b></td>
</tr>
<%
try{ 
	String name,password,gender,email,branch,medical,bloodgrp,fname,femail,foccupation,mname,memail,moccupation,address,area,district,state,cur_add;
	int no,dob,tgid,fno,mno,aid,rollno,rn,pin,ssc,hsc,jee,paid,pending,total;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
	Statement st = con.createStatement();
	ResultSet resultSet = st.executeQuery(" select  basic_info.name, academic.rollno, fee.paid, fee.pending, fee.total, fee.rn from fee, basic_info, academic where basic_info.rn=fee.rn and basic_info.rollno=academic.rollno order by basic_info.rollno;");
	while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getInt(2) %></td>
<td><%=resultSet.getInt(3) %></td>
<td><%=resultSet.getInt(4) %></td>
<td><%=resultSet.getInt(5) %></td>
 <td><%=resultSet.getInt(6) %></td>
<%-- <td><%=resultSet.getInt(4) %></td> --%>


</tr>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>






<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>user_id</b></td>
<td><b>Password</b></td>
<td><b>Name</b></td>
<td><b>Name</b></td>
<td><b>Name</b></td>
</tr>
<%
try{ 
	String name,password,gender,email,branch,medical,bloodgrp,fname,femail,foccupation,mname,memail,moccupation,address,area,district,state,cur_add;
	int no,dob,tgid,fno,mno,aid,rollno,rn,pin,ssc,hsc,jee,paid,pending,total;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
	Statement st = con.createStatement();
	ResultSet resultSet = st.executeQuery("select basic_info.name, academic.rollno, academic.ssc, academic.hsc, academic.jee from basic_info, academic where basic_info.rollno=academic.rollno;");
	while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getInt(2) %></td>
<td><%=resultSet.getInt(3) %></td>
<td><%=resultSet.getInt(4) %></td>
<td><%=resultSet.getInt(5) %></td>
 
<%-- <td><%=resultSet.getInt(4) %></td> --%>


</tr>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>






</body>
</html>