package com.tgapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StudentLoginVerification
 */
@WebServlet("/StudentLoginVerification")
public class StudentLoginVerification extends HttpServlet {
	


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("user");
		System.out.println(email);
		String pass = request.getParameter("pass");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
			Statement st = con.createStatement();
			
			ResultSet resultSet = st.executeQuery("select * from basic_info;");
			
			while (resultSet.next()) {
				System.out.println("inside while");
				System.out.println("From database "+resultSet.getString(4)+resultSet.getString(2));
				System.out.println("From user"+email+pass);
				if(email.equals((resultSet.getString(4)))) {
					System.out.println("inside 1st verification");
					if(pass.equals(resultSet.getString(2))) {
						System.out.println("checked if");
						
						HttpSession session = request.getSession();
						session.setAttribute("email", email);
					
						response.sendRedirect("studdisplay.jsp");
					}
					else {
						response.sendRedirect("studentlogin.jsp");
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
