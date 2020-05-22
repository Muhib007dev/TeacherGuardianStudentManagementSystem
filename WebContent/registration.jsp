<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>REGISTRATION FORM</title>
<center><h1><u>STUDENT REGISTRATION FORM</u> </h1></center> 
</head>
<body bgcolor="c0c0c0">
	<h1>PERSONAL INFORMATION</h1>
<form action="StudentRegistration">
	<table>
		<tr>
			<td>
				NAME :
			</td>
			<td>
				<input type="text"  name="user">
			</td>
		</tr>
		<tr>
			<td>
				PASSWORD :
			</td>
			<td>
				<input type="PASSWORD" name="pass">
			</td>
		</tr>
		<tr>
			<td>
				GENDER :
			</td>
			<td>
				<input type="radio" name="GENDER" value='male'>male
				<input type="radio" name="GENDER" value="female">female
			</td>
		</tr>
		<tr>
			<td>
				EMAIL :
			</td>
			<td>
				<input type="email" name="email">
			</td>
		</tr>
		<tr>
			<td> PHONE NO:</td>
			<td>
				<input type="phone" name="phone">
			</td>
		</tr>	
		<tr>
			<td>ROLL NO :</td>
			<td>
				<input type="number" name="roll">
			</td>
 		</tr>
 		<tr>
 			<td> LOCAL ADDRESS :</td>
 			<td>
 				<input type="text" name="loadd">
 			</td>
 		</tr>
 		<tr>
 			<td> AREA :</td>
 			<td>
 				<input type="text" name="area">
 			</td>
 		</tr>
 		<tr>
 			<td> DISTRICT : </td>
 			<td>
 				<input type="text" name="district">
 			</td>
 		</tr>
 		<tr>
 			<td> STATE :</td>
 			<td>
 				<input type="text" name="state">
 			</td>
 		</tr>
 		<tr>
 			<td> PIN CODE :</td>
 			<td>
 				<input type="text" name="pincode">
 			</td>
 		</tr>
 		<tr>
 			<td> CURRENT ADDRESS :</td>
 			<td>
 				<input type="text" name="ad">
 			</td>
 		</tr>
 		<tr>
 			<td> ADDRESS ID (SAME AS ROLLNO.) :</td>
 			<td>
 				<input type="number" name="aid">
 			</td>
 		</tr>
 		<tr>
 			<td> BRANCH :</td>
 			<td>
 				<input type="text" name="mbranch">
 			</td>
 		</tr>
 		<tr>
 			<td> DATE OF BIRTH :</td>
 			<td>
 				<input type="text" name="dob">
 			</td>
 		</tr>
 		<tr>
 			<td> BLOOD GROUP :</td>
 			<td>
 				<input type="text" name="blood">
 			</td>
 		</tr>
 		<tr>
 			<td> MEDICAL HISTORY :</td>
 			<td>
 				<input type="text" name="medical">
 			</td>
 		</tr>
		<tr>
			<td> TG_ID :</td>
			<td>
				<input type="number" name="tgid">
			</td>
		</tr>
	</table>

		<h1> PARENT'S INFORMATION : </h1>
		<table>
			<tr>
				<td> FATHER NAME :</td>
				<td>
					<input type="text" name="fname">
				</td>
			</tr>
			<tr>
				<td> CONTACT NUMBER :</td>
				<td>
					<input type="number" name="fnumber">
				</td>
			</tr>
			<tr>
				<td> OCCUPATION :</td>
				<td>
					<input type="text" name="focc">
				</td>
			</tr>
			<tr>
				<td> EMAIL :</td>
				<td>
					<input type="email" name="femail">
				</td>
			</tr>
			<tr>
				<td> MOTHER NAME :</td>
				<td>
					<input type="text" name="mname">
				</td>
			</tr>
			<tr>
				<td> CONTACT NUMBER :</td>
				<td>
					<input type="text" name="mnumber">
				</td>
			</tr>
			<tr>
				<td> OCCUPATION :</td>
				<td>
					<input type="text" name="mocc">
				</td>
			</tr>
			<tr>
				<td> EMAIL :</td>
				<td>
					<input type="email" name="memail">
				</td>
			</tr>
		</table>

		<h1> ACADEMIC INFORMATION :</h1>
		<table>
			<tr>
				<td>SSC(%) :</td>
				<td>
					<input type="text" name="ssc">
				</td>
			</tr>
			<tr>
				<td> HSC(%) :</td>
				<td>
					<input type="text" name="hsc">
				</td>
			</tr>
			<tr>
				<td> JEE SCORE :</td>
				<td>
					<input type="text" name="jee">
				</td>
			</tr>
		</table>

		<h1> FEES DETAILS :</h1>
		<table>
			<tr>
				<td> TOTAL FEES :</td>
				<td>
					<input type="text" name="fee">
				</td>
			</tr>
			<tr>
				<td> PAID FEES :</td>
				<td>
					<input type="text" name="paid">
				</td>
			</tr>
			<tr>
				<td>PENDING FEE :</td>
				<td>
					<input type="text" name="pending">
				</td>
			</tr>
			<tr>
				<td>RECEIPT NO. :</td>
				<td>
					<input type="text" name="rp">
				</td>
			</tr>
			<tr>
				<td>
			       <h1><input type="submit" value="submit"></h1>
                </td>
	        </tr>
		</table>
	</form>
	

</body>
</html>