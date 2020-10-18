package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.conn.MyConn;
import com.dto.Admin;

public class AdminDaoImple implements AdminDao{
	
	private MyConn myConn;
	
	public AdminDaoImple() {
		myConn = new MyConn();
	}

	@Override
	public boolean login(Admin admin) {
		boolean flag = false;
		try {
			Connection con = myConn.getConn();
			PreparedStatement p = con.prepareStatement("select * from user where name = ? and password=?");
			p.setString(1, admin.getName());
			p.setString(2, admin.getPassword());
			
			ResultSet rs = p.executeQuery();
			if(rs.next()) {
				flag=true;
			}
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
	}
}
