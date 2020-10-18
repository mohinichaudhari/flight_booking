package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConn {


	private static final String DRIVER_CLASS="com.mysql.cj.jdbc.Driver";
	private static String URL="jdbc:mysql://localhost:3306/compition";
	private static String USER_NAME="root";
	private static String PASSWORD = "mohini1998";
	
	private Connection con;
	public Connection getConn() throws ClassNotFoundException , SQLException{
		
		if(con ==  null || con.isClosed() ) {
			Class.forName(DRIVER_CLASS);
			con=java.sql.DriverManager.getConnection(URL,USER_NAME,PASSWORD);
		}
		return con;
		
	}
	
}
