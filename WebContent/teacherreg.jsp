<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<br><br>
	<title> TEACHER REGISTRATION FORM </title>
	<center><h1> TEACHER REGISTRATION FORM </h1></center>
</head>
<body bgcolor="c0c0c0">
<form action="TeacherRegistration">
	<center>
	<table>
		<tr>
			<td>
				<h3> NAME :</h3>
			</td>
			<td>
				<input type="text"  name="user">
			</td>
		</tr>
		<tr>
			<td>
				<h3>PASSWORD :</h3>
			</td>
			<td>
				<input type="PASSWORD" name="pass">
			</td>
		</tr>
		<tr>
			<td>
				<h3>GENDER :</h3>
			</td>
			<td>
				<input type="radio" name="GENDER" value='m'>male
				<input type="radio" name="GENDER" value="f">female
			</td>
		</tr>
		<tr>
			<td>
				<h3>EMAIL :</h3>
			</td>
			<td>
				<input type="email" name="email">
			</td>
		</tr>
		<tr>
			<td>
			 <h3>PHONE NUMBER:</h3>
			</td>
			<td>
				<input type="phone" name="phone">
			</td>
		</tr>	
		<tr>
			<td>
			   <h1><input type="submit" value="submit"></h1>
            </td>
	     </tr>
</table>
</center>
</form>
</body>
</html>