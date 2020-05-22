package com.tgapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TeacherRegistration
 */
@WebServlet("/TeacherRegistration")
public class TeacherRegistration extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int count=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
			Statement st = con.createStatement();
			String user = request.getParameter("user");
			int phone = Integer.parseInt(request.getParameter("phone"));
			String pass = request.getParameter("pass");
			String GENDER = request.getParameter("GENDER");
			String email = request.getParameter("email");
			
			count = st.executeUpdate("INSERT INTO teacher values('"+user+"',"+phone+",'"+pass+"','"+email+"','"+GENDER+"')");
			if(count>0) {
				response.sendRedirect("TGregistrationSuccessful.html");
			}
			
			else {
				response.sendRedirect("registrationException.jsp");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
