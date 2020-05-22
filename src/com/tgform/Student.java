package com.tgform;
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Student")
public class Student extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter writer = response.getWriter();
		
		writer.print("clicked");
		
		
		String name,password,gender,email,branch,medical,bloodgrp,fname,femail,foccupation,mname,memail,moccupation,address,area,district,state,cur_add;
		int no,dob,tgid,fno,mno,aid,rollno,rn,pin,ssc,hsc,jee,paid,pending,total;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
			Statement st = con.createStatement();
			ResultSet resultSet = st.executeQuery(" select  basic_info.name, academic.rollno, fee.paid, fee.pending, fee.total, fee.rn from fee, basic_info, academic where basic_info.rn=fee.rn and basic_info.rollno=academic.rollno ;");
			while(resultSet.next()){
			
				System.out.println(resultSet.getString(1));
				System.out.println(resultSet.getInt(2));
				System.out.println(resultSet.getInt(3));
				System.out.println(resultSet.getInt(4));
				System.out.println(resultSet.getInt(5));
			System.out.println(resultSet.getInt(6)); 
			}
			
			ResultSet resultSet2 = st.executeQuery("select basic_info.name, academic.rollno, academic.ssc, academic.hsc, academic.jee from basic_info, academic where basic_info.rollno=academic.rollno;");
			while(resultSet2.next()){
				
				System.out.println(resultSet2.getString(1));
				System.out.println(resultSet2.getInt(2));
				System.out.println(resultSet2.getInt(3));
				System.out.println(resultSet2.getInt(4));
				System.out.println(resultSet2.getInt(5));
			
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
