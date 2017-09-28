package com.us.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("Login Servlet");
		String email=request.getParameter("Username");
		String Password=request.getParameter("Password");
		System.out.println("---- usrname "+email);
		System.out.println("---- password "+Password);
		ConnectionPool connectionPool=new ConnectionPool();
		Connection con=connectionPool.getConnection();
		String sql="select * from register where Email='"+email+"'&&Password='"+Password+"'";
	
		/*PrintWriter out = response.getWriter();  
		response.setContentType("text/html");  
		out.println("<script type=\"text/javascript\">");  
		out.println("alert('Please enter password ');");  
		out.println("</script>");*/
		
		HttpSession session=request.getSession();
		try {
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			
			System.out.println("rs.first() ---"+rs.first());
			
			/*if(rs.first()){
				response.sendRedirect("EmployeeHome.jsp");	
			}else{
				// session.setAttribute("value", "no");
				
				response.sendRedirect("index.jsp?value=no");
			}*/
			
			String FirstName="";
			if (rs!=null) {
				while (rs.next()) {
					
					FirstName=rs.getString("FirstName");
					System.out.println(FirstName);
					
				}
				session.setAttribute("UserId",FirstName);
				request.setAttribute("UserID",FirstName);
				response.sendRedirect("EmployeeHome.jsp");
				
			} else {
				request.setAttribute("status","The User Dosnt exists Inour records");
				response.sendRedirect("index.jsp?value=no");
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
