<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@ page import="com.tgapp.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student details</title>
</head>
<body>

<form action="LogOutStudent">
<input type="submit" value="Log Out">
</form>
<h2 align="center"><font><strong>STUDENT DETAILS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b> NAME</b></td>
<td><b>ROLL NO.</b></td>
<td><b>EMAIL</b></td>
<td><b>BRANCH</b></td>
<td><b>MEDICAL HISTORY</b></td>
<td><b>NUMBER</b></td>
<td><b>BLOOD GROUP</b></td>
<td><b>DATE OF BIRTH</b></td>
<td><b>TG ID</b></td>
<td><b>FATHER'S NAME</b></td>
<td><b>FATHER'S NUMBER</b></td>
<td><b>FATHER'S EMAIL</b></td>
<td><b>FATHER'S OCCUPATION</b></td>
<td><b>MOTHER'S NAME</b></td>
<td><b>MOTHER'S NUMBER</b></td>

<td><b>MOTHER'S OCCUPATION</b></td>
<td><b>PERMANENT ADDRESS </b></td>
<td><b>AREA</b></td>

<td><b>STATE</b></td>
<td><b>PIN</b></td>
<td><b>CURRENT ADDRESS</b></td>
<td><b>SSC PERCENTAGE</b></td>
<td><b>HSC PERCENTAGE</b></td>
<td><b>JEE MARKS</b></td>

<td><b>PAID FEE</b></td>
<td><b>PENDING FEE</b></td>
<td><b>TOTAL FEE</b></td>
</tr>
<%
try{ 
	HttpSession session2 = request.getSession();
	
	String email = session2.getAttribute("email").toString();
	String name,password,gender,branch,medical,bloodgrp,fname,femail,foccupation,mname,moccupation,address,area,district,state,cur_add;
	int no,dob,tgid,fno,mno,aid,rollNo,rn,pin,ssc,hsc,jee,paid,pending,total;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
	Statement st = con.createStatement();
	ResultSet resultSet = st.executeQuery("select basic_info.name, academic.rollno, basic_info.email, basic_info.branch, basic_info.medical, basic_info.no, basic_info.bloodgrp, basic_info.dob, basic_info.tg_id, father.fnmae, father.fno, father.femail, father.foccupation, mother.mname, mother.mno, mother.moccupation, address.address, address.area, address.state, address.pin, address.cur_add, academic.ssc, academic.hsc, academic.jee, fee.paid, fee.pending, fee.total from basic_info, father, mother, address, academic, fee where basic_info.fno= father.fno and basic_info.mno=mother.mno  and basic_info.aid=address.aid and basic_info.rollno=academic.rollno and basic_info.rn=fee.rn and basic_info.email='"+email+"';");
	while(resultSet.next()){
		rollNo=resultSet.getInt(2);
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getInt(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>
<td><%=resultSet.getString(8) %></td>
<td><%=resultSet.getString(9) %></td>
<td><%=resultSet.getString(10) %></td>
<td><%=resultSet.getString(11) %></td>
<td><%=resultSet.getString(12) %></td>
<td><%=resultSet.getString(13) %></td>
<td><%=resultSet.getString(14) %></td>

<td><%=resultSet.getString(15) %></td>
<td><%=resultSet.getString(16) %></td>

<td><%=resultSet.getString(17) %></td>

<td><%=resultSet.getString(18) %></td>
<td><%=resultSet.getString(19) %></td>
<td><%=resultSet.getString(20) %></td>
<td><%=resultSet.getString(21) %></td>
<td><%=resultSet.getInt(22) %></td>
<td><%=resultSet.getInt(23) %></td>
<td><%=resultSet.getInt(24) %></td>
<td><%=resultSet.getInt(25) %></td>
<td><%=resultSet.getInt(26) %></td>
<td><%=resultSet.getInt(27) %></td>

</tr>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<form action="ModByStud">
ENTER YOUR UPDATED EMAIL<input type="email" name="email">

<input type="submit" value="submit"> 
</form>
<!-- <form action="ModByStud">
ENTER YOUR UPDATED ROLLNO<input type="text" name="rollno">
<input type="submit" value="submit"> 
</form> -->
<form action="ModByStud">
ENTER YOUR UPDATED MEDICAL HISTORY<input type="text" name="medical">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED NUMBER<input type="text" name="no">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED TG_ID<input type="text" name="tgid">
<input type="submit" value="submit">
</form>
<form action="ModByStud">
ENTER YOUR UPDATED FATHER'S NUMBER<input type="text" name="fno">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED FATHER'S EMAIL<input type="email" name="femail">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED FATHER'S OCCUPATION<input type="text" name="foccupation">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED MOTHER'S NUMBER<input type="text" name="mno">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED MOTHER'S OCCUPATION<input type="text" name="moccupation">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED PERMANENT ADDRESS<input type="text" name="address">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED AREA<input type="text" name="area">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED STATE<input type="text" name="state">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED PIN<input type="text" name="pin">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED CURRENT ADDRESS<input type="text" name="cur_add">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED ADDRESS ID<input type="text" name="aid">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED PAID FEE<input type="text" name="paid">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED PENDING FEE<input type="text" name="pending">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED TOTAL FEE<input type="text" name="total">
<input type="submit" value="submit"> 
</form>
<form action="ModByStud">
ENTER YOUR UPDATED RECEIPT NUMBER<input type="text" name="rn">
<input type="submit" value="submit"> 
</form>

</body>
</html>