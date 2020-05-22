package com.tgapp;

import com.tgapp.*;
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ModByStud
 */
@WebServlet("/ModByStud")
public class ModByStud extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ModByTG byTG= new ModByTG();
		
		
		try {
			
			HttpSession session = request.getSession();
			String currentEmail = session.getAttribute("email").toString();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new", "root", "root");
			Statement st = con.createStatement();
			
			
			
			String email = request.getParameter("email");
			String rollNo = request.getParameter("rollno");
			String medical = request.getParameter("medical");
			String no = request.getParameter("no");
			String tgid = request.getParameter("tgid");
			String fno = request.getParameter("fno");
			String femail = request.getParameter("femail");
			String foccupatin = request.getParameter("foccupation");
			String mno = request.getParameter("mno");
			String moccupation = request.getParameter("moccupation");
			String address = request.getParameter("address");
			String area = request.getParameter("area");
			String state = request.getParameter("state");
			String pin = request.getParameter("pin");
			String cur_add = request.getParameter("cur_add");
			String aid = request.getParameter("aid");
			String paid = request.getParameter("paid");
			String pending = request.getParameter("pending");
			String total = request.getParameter("total");
			String rn = request.getParameter("rn");
			if(email!=null) {
				st.executeUpdate("update basic_info set email='"+email+"' where email='"+currentEmail+"';");
			}
			
			else if(rollNo!=null) {
				
			}
			
			else if (medical!=null){
				st.executeUpdate("update basic_info set medical='"+medical+"' where email='"+currentEmail+"';");
			}
			else if(no!=null) {
				st.executeUpdate("update basic_info set no='"+no+"' where email='"+currentEmail+"';");
			}
			
			else if (tgid!=null){
				st.executeUpdate("update basic_info set tg_id='"+tgid+"' where email='"+currentEmail+"';");
			}
						
			else if (femail!=null){
				st.execute(" update father,basic_info set father.femail='"+femail+"' where basic_info.email='"+currentEmail+"' and basic_info.fno=father.fno;");
			}
			else if(foccupatin!=null) {
				st.execute(" update father,basic_info set father.foccupation='"+foccupatin+"' where basic_info.email='"+currentEmail+"' and basic_info.fno=father.fno;");
			}
			
			else if (moccupation!=null){
				st.execute(" update mother,basic_info set mother.moccupation='"+moccupation+"' where basic_info.email='"+currentEmail+"' and basic_info.mno=mother.mno;");
			}
			else if(address!=null) {
				st.execute(" update address,basic_info set address.address='"+address+"' where basic_info.email='"+currentEmail+"' and basic_info.aid=address.aid;");
			}
			
			else if (area!=null){
				st.execute(" update address,basic_info set address.area='"+area+"' where basic_info.email='"+currentEmail+"' and basic_info.aid=address.aid;");
			}
			else if(state!=null) {
				st.execute(" update address,basic_info set address.state='"+state+"' where basic_info.email='"+currentEmail+"' and basic_info.aid=address.aid;");
			}
			
			else if (pin!=null){
				
				st.execute(" update address,basic_info set address.pin='"+pin+"' where basic_info.email='"+currentEmail+"' and basic_info.aid=address.aid;");
			}
			else if(cur_add!=null) {
				st.execute(" update address,basic_info set address.cur_add='"+cur_add+"' where basic_info.email='"+currentEmail+"' and basic_info.aid=address.aid;");
			}
			else if(paid!=null) {
				st.execute("update fee,basic_info set fee.paid='"+paid+"'  where basic_info.email='"+currentEmail+"' and basic_info.rn=fee.rn;");
			}
			
			else if (pending!=null){
				st.execute("update fee,basic_info set fee.pending='"+pending+"'  where basic_info.email='"+currentEmail+"' and basic_info.rn=fee.rn;");
			}
								
			response.sendRedirect("studdisplay.jsp");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
