package com.tgapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentRegistration
 */
@WebServlet("/StudentRegistration")
public class StudentRegistration extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int count = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
			Statement st = con.createStatement();

		System.out.println("ENTER FATHER NAME ");
		String fnam = request.getParameter("fname");
		System.out.println("ENTER FATHER'S NUMBER ");
		int fno = Integer.parseInt(request.getParameter("fnumber"));
		System.out.println("ENTER FATHER'S OCUPATION ");
		String focp = request.getParameter("focc");
		System.out.println("ENTER FATHER'S EMAIL ");
		String fem = request.getParameter("femail");
		 st.executeUpdate("INSERT INTO father values('"+fnam+"',"+fno+",'"+focp+"','"+fem+"')");

		System.out.println("ENTER MOTHER'S NAME ");
		String mnam = request.getParameter("mname");
		System.out.println("ENTER MOTHER'S NUMBER ");
		int mno = Integer.parseInt(request.getParameter("mnumber"));
		System.out.println("ENTER MOTHER'S OCUPATION ");
		String mocp = request.getParameter("mocc");
		System.out.println("ENTER MOTHER'S EMAIL ");
		String mem = request.getParameter("memail");
		;
		 st.executeUpdate("INSERT INTO mother values('"+mnam+"',"+mno+",'"+mocp+"','"+mem+"')");

		System.out.println("ENTER SSC PERCENTAGE ");
		int ssc = Integer.parseInt(request.getParameter("ssc"));
		System.out.println("ENTER HSC PERCENTAGE ");
		int hsc = Integer.parseInt(request.getParameter("hsc"));
		System.out.println("ENTER JEE MARKS ");
		int jee = Integer.parseInt(request.getParameter("jee"));
		System.out.println("ENTER ROLL NO ");
		int rol = Integer.parseInt(request.getParameter("roll"));
		st.executeUpdate("INSERT INTO academic values("+ssc+","+hsc+","+jee+","+rol+")");

		System.out.println("ENTER PERMANENT ADDRESS ");
		String padd = request.getParameter("loadd");
		System.out.println("ENTER AREA ");
		String are = request.getParameter("area");
		System.out.println("ENTER DISTRICT ");
		String dis = request.getParameter("district");
		System.out.println("ENTER STATES ");
		String sta = request.getParameter("state");
		System.out.println("ENTER CURRENT ADDRESS ");
		String cadd = request.getParameter("ad");
		System.out.println("ENTER PIN CODE ");
		int pin = Integer.parseInt(request.getParameter("pincode"));
		System.out.println("ENTER ADDRESS ID ");
		int aid = Integer.parseInt(request.getParameter("aid"));
		st.executeUpdate("INSERT INTO address values('"+padd+"','"+are+"','"+dis+"','"+sta+"',"+pin+",'"+cadd+"',"+aid+")");

		System.out.println("ENTER PAID FEE ");
		int paidf = Integer.parseInt(request.getParameter("paid"));
		System.out.println("ENTER PENDING FEE ");
		int pendf = Integer.parseInt(request.getParameter("pending"));
		System.out.println("ENTER TOTAL FEE ");
		int tfee = Integer.parseInt(request.getParameter("fee"));
		System.out.println("ENTER RECIPTE NUMBER ");
		int rn = Integer.parseInt(request.getParameter("rp"));
		st.executeUpdate("INSERT INTO fee values("+paidf+","+pendf+","+tfee+","+rn+")");

		System.out.println("ENTER STUDENT NAME");
		String nam = request.getParameter("user");
		System.out.println("ENTER STUDENT PASSWORD ");
		String pas = request.getParameter("pass");
		System.out.println("ENTER STUDENT GENDER ");
		String gen = request.getParameter("GENDER");
		System.out.println("ENTER STUDENT EMAIL ");
		String email = request.getParameter("email");
		System.out.println("ENTER STUDENT BRANCH  ");
		String bran = request.getParameter("mbranch");
		System.out.println("ENTER STUDENT DATE OF BIRTH ");
		String dob = request.getParameter("dob");
		System.out.println("ENTER STUDENT MEDICAL HISTORY ");
		String med = request.getParameter("medical");
		System.out.println("ENTER STUDENT NUMBER ");
		int numb = Integer.parseInt(request.getParameter("phone"));
		System.out.println("ENTER blood group ");
		String bloodgrp = request.getParameter("blood");
		System.out.println("ENTER TEACHER ID ");
		int tgid = Integer.parseInt(request.getParameter("phone"));
		count = st.executeUpdate("INSERT INTO basic_info values('"+nam+"','"+pas+"','"+gen+"','"+email+"','"+bran+"','"+med+"',"+numb+",'"+bloodgrp+"',"+dob+","+tgid+","+fno+","+mno+","+aid+","+rol+","+rn+")");

		if(count>0) {
			response.sendRedirect("registrationSuccessful.html");
		}
		
		else {
			response.sendRedirect("registrationException.html");
		}
		
		/*
		 * PrintWriter writer = response.getWriter(); writer.println(fnam);
		 * writer.println(fno); writer.println(fedu); writer.println(focp);
		 * writer.println(fdeg); writer.println(fcom); writer.println(fem);
		 * writer.println(mnam); writer.println(mno); writer.println(medu);
		 * writer.println(mocp); writer.println(mdeg); writer.println(mcom);
		 * writer.println(mem); writer.println(lnam); writer.println(lno);
		 * writer.println(rel); writer.println(lad); writer.println(frnam);
		 * writer.println(frno); writer.println(br); writer.println(ssc);
		 * writer.println(hsc); writer.println(dip); writer.println(cet);
		 * writer.println(jee); writer.println(rol); writer.println(padd);
		 * writer.println(are); writer.println(lnd); writer.println(tal);
		 * writer.println(dis); writer.println(sta); writer.println(cadd);
		 * writer.println(pin); writer.println(aid); writer.println(paidf);
		 * writer.println(pendf); writer.println(tfee); writer.println(rn);
		 * writer.println(nam); writer.println(pas); writer.println(gen);
		 * writer.println(email); writer.println(bran); writer.println(dob);
		 * writer.println(med); writer.println(numb); writer.println(bloodgrp);
		 */


		} catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
