package com.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.conn.MyConn;
import com.dto.User;

public class UserDaoImple implements UserDao{
	
	MyConn myConn;
	
	public UserDaoImple(){
		myConn = new MyConn();
	}

	@Override
	public int insertDetails(User user) {
		// TODO Auto-generated method stub
		int i = 0;
		try {
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement("insert into booking(name,contactno,booked_seats,time1,flight_no,dept_date) values(?,?,?,?,?,?)");
			s.setString(1,user.getName());
			s.setString(2,user.getContact());
			s.setInt(3,user.getBookedSeats());
			s.setString(4, user.getTime());
			s.setString(5,user.getFlightNo());
			s.setString(6,user.getDeptDate());
			
		    i = s.executeUpdate();
		    s.close();
		    PreparedStatement s1 = con.prepareStatement("select * from booking where name = ? and contactno = ? and booked_seats = ?");
		    s1.setString(1,user.getName());
			s1.setString(2,user.getContact());
			s1.setInt(3,user.getBookedSeats());
			ResultSet rs = s1.executeQuery();
			if(rs.next()) {
				user.setBookingId(rs.getInt("booking_id"));
				
			}
			s1.close();
			CallableStatement s2 = 
					con.prepareCall("{ call UpdateData(?,?) }");
			s2.setInt(1, user.getBookedSeats());
			s2.setString(2,user.getFlightNo());
			s2.execute();
			s2.close();
		    con.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public ArrayList<User> showDetails(int bookingId) {
		// TODO Auto-generated method stub
		//boolean flag = false;
		 ArrayList<User> arr = new ArrayList<>();
		try {
			System.out.println("booking ID "+bookingId);
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement("select * from booking where booking_id = ?");
			s.setInt(1,bookingId);
		    ResultSet rs = s.executeQuery();
		    while(rs.next()) {
		    	User user1 = new User();
		    	user1.setBookingId(rs.getInt("booking_id"));
		    	user1.setBookedSeats(rs.getInt("booked_seats"));
		    	user1.setDeptDate(rs.getString("Dept_date"));
		    	user1.setTime(rs.getString("time1"));
		    	user1.setName(rs.getString("name"));
		    	user1.setContact(rs.getString("contactno"));
		    	user1.setFlightNo(rs.getString("flight_no"));
		    	arr.add(user1);
		    	System.out.println(user1);
		    }
			s.close();
			con.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return arr;
	}

}
