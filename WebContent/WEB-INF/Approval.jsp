package com.as.samples;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


@WebServlet("/Approval")
public class Approval extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String status = request.getParameter("status");
		
		int x=0;
		//System.out.println("confirmed");
		if(status.equals("confirm"))
		{
			x=1;
			System.out.println("confirmed");
			JOptionPane.showMessageDialog(null, "ALL ORDERS HAVE BEEN CONFIRMED", "Information", JOptionPane.INFORMATION_MESSAGE); 
		}
		else
			if(status.equals("cancel"))
			{
				x=-1;
				JOptionPane.showMessageDialog(null, "ALL ORDERS HAVE BEEN CANCELLED", "Information", JOptionPane.INFORMATION_MESSAGE); 
			}
		
		//String status= String.valueOf(x);
		try {
			  // Class.forName("jdbc:mysql://localhost:3306/Tiffin_Service");
			   Class.forName("com.mysql.jdbc.Driver"); 
	    	   Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Tiffin_Service","root","123456");
		
	    	   
	    	   String query = "UPDATE OrderDetails SET order_status = ?";

	    	   
	    	   
	    	   PreparedStatement myStmt = myConn.prepareStatement(query);
	    	   myStmt.setInt(1,x);
	    	   myStmt.executeUpdate();
	    	   System.out.println("order status set to " + x);	 
	    	   
	    	   String query1 = "select order_status,mobile from OrderDetails";
	    	   PreparedStatement myStmt1 = myConn.prepareStatement(query1);
	    	   ResultSet rs= myStmt1.executeQuery();
	    	   
	    	  
	    		   int j=0;
	    		   while(rs.next()) {
	    		   int i = rs.getInt("order_status");
	    		   String mobile= rs.getString("mobile");
	    		   String query2 = "UPDATE OrderStatus SET status = ? where mobile = ?";
	    		   PreparedStatement myStmt2 = myConn.prepareStatement(query2);
		    	   myStmt2.setInt(1,x);
		    	   myStmt2.setString(2, mobile);
		    	   myStmt2.executeUpdate();
		    	   j=i;
	    		   }
	    		   
	    		   
	    		   
	    		   if(j==1 || j==-1)
	    		   {
	    			   Statement statement = myConn.createStatement();
	    			      
	    			   statement.executeUpdate("TRUNCATE OrderDetails");
	    			   
	    			   System.out.println("deleted all order details");	    			   
	    		   }
	    	   
	    	   
		}
		catch(Exception e)
		{
		  e.printStackTrace();
		}
		response.sendRedirect("jsp/adminOrderDetails.jsp");
		System.out.println("reached the end");
   }

}