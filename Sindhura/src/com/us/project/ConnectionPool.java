package com.us.project;

import java.io.PrintStream;
import java.sql.*;

public class ConnectionPool {

	public ConnectionPool() {
	}

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/Walldatabase", "root", "");
			System.out.println(con);
			if (con != null)
				System.out
						.println("Connection Pool Database Connection Success");
		} catch (ClassNotFoundException classnotfoundexception) {
			System.out.println((new StringBuilder()).append("message =")
					.append(classnotfoundexception.toString()).toString());
		} catch (SQLException sqlexception) {
			System.out.println(sqlexception.getMessage());
		}
		return con;
	}

	private static Connection con = null;

}

