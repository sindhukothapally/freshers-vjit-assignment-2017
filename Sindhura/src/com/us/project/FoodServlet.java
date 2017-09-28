package com.us.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FoodServlet")
public class FoodServlet  extends HttpServlet{

	public FoodServlet() {
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String foodType=request.getParameter("foodName");
		System.out.println("==FoodType==="+foodType);
		String starter=request.getParameter("starter");
		System.out.println("==starter==="+starter);
		String RiceType=request.getParameter("RiceItem");
		System.out.println("==RiceItem==="+RiceType);
		String drink=request.getParameter("DrinkName");
		System.out.println("==DrinkName==="+drink);
		String FoodId="";
		
		String startItem=request.getParameter("startItem");
		String riceItem=request.getParameter("riceName");
		String drinkItem=request.getParameter("drinkItemName");
		System.out.println("==startItem==="+startItem);
		System.out.println("==riceItem==="+riceItem);
		System.out.println("==drinkItem==="+drinkItem);
		
		ConnectionPool connectionPool=new ConnectionPool();
		Connection con=connectionPool.getConnection();
		String sql="select max(foodId) from food";
		String sql1="insert into Food values(?,?,?,?,?,?,?,?)";
		int foodint=0;
		if(con!=null){
			try {
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery(sql);
				while (rs.next()) {
					foodint=rs.getInt(1);
					  System.out.println("====foodint===="+foodint);
				}
                //System.out.println("====FoodId===="+FoodId);

               // foodint=Integer.valueOf(FoodId);
				foodint=foodint+1;
				//FoodId=String.valueOf(foodint);
					//System.out.println("Email Is Ok");	
					PreparedStatement ps=con.prepareStatement(sql1);
					ps.setInt(1,foodint);
					ps.setString(2,foodType);
					ps.setString(3,starter);
					ps.setString(4,startItem);
					ps.setString(5,RiceType);
					ps.setString(6,riceItem);
					ps.setString(7,drink);
					ps.setString(8,drinkItem);
					int i=ps.executeUpdate();
					//response.sendRedirect("index.jsp");
					
				System.out.println("====no of record inserted===i=="+i);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		response.sendRedirect("EmployeeHome.jsp");
		}
	
}
