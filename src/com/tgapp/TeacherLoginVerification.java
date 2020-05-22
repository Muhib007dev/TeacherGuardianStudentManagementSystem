package com.tgapp;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class TeacherLoginVerification
 */
@WebServlet("/TeacherLoginVerification")
public class TeacherLoginVerification extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("user");
		System.out.println(email);
		String pass = request.getParameter("pass");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
			Statement st = con.createStatement();
			
			ResultSet resultSet = st.executeQuery("select * from teacher;");
			
			while (resultSet.next()) {
				System.out.println("inside while");
				System.out.println("From database "+resultSet.getString(4)+resultSet.getString(2));
				System.out.println("From user"+email+pass);
				if(email.equals(resultSet.getString(4))) {
					System.out.println("inside 1st verification");
					if(pass.equals(resultSet.getString(3))) {
						System.out.println("checked if");
						
						HttpSession session = request.getSession();
						session.setAttribute("email", email);
					
						response.sendRedirect("TGDisplay.jsp");
					}
					else {
						response.sendRedirect("teacherlogin.jsp");
					}
			
				}
				
			}
			
			//response.sendRedirect("studentlogin.jsp");
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
