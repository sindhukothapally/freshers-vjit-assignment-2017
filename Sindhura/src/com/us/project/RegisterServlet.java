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

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	String email=request.getParameter("Email");
	String FirstName=request.getParameter("FirstName");
	String LastName=request.getParameter("LastName");
	String Password=request.getParameter("Password");
	System.out.println(email);
	ConnectionPool connectionPool=new ConnectionPool();
	Connection con=connectionPool.getConnection();
	String sql="select Email from register";
	String sql1="insert into register values(?,?,?,?)";
	if(con!=null){
		try {
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while (rs.next()) {
				String Email=rs.getString("Email");
				if(email.equals(Email)){
					System.out.println("Email Exist In Database");
					request.setAttribute("Status","Email Exist Already In database Please Try Another");
					response.sendRedirect("Signup.jsp");
				}
				
			}
			
				System.out.println("Email Is Ok");	
				PreparedStatement ps=con.prepareStatement(sql1);
				ps.setString(1,FirstName);
				ps.setString(2,LastName);
				ps.setString(3,email);
				ps.setString(4,Password);
				int i=ps.executeUpdate();
				response.sendRedirect("index.jsp");
				
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	}

}
