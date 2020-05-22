package com.tgapp;
import java.sql.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ModByTG")
public class ModByTG extends HttpServlet {

	String name;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password,gender,email,branch,medical,bloodgrp,fname,femail,foccupation,mname,memail,moccupation,address,area,district,state,cur_add;
		int no,dob,tgid,fno,mno,aid,rollno,rn,pin,ssc,hsc,jee,paid,pending,total;
		name="testing";
		try {
			String rollNo=request.getParameter("rollNo");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
			Statement st = con.createStatement();
			st.executeUpdate("  delete from basic_info, father, mother, address, academic, fee using basic_info inner join father inner join mother inner join address inner join academic inner join fee where basic_info.rollno="+rollNo+" and basic_info.fno=father.fno and basic_info.mno=mother.mno and basic_info.aid=address.aid and basic_info.rn=fee.rn;");
			response.sendRedirect("TGDisplay.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
