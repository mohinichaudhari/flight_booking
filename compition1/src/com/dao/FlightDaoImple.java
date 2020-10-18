package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.conn.MyConn;
import com.dto.FlightOpeartion;


public class FlightDaoImple implements FlightDao{
private MyConn myConn;


	public FlightDaoImple() {
	myConn = new MyConn();
}


	@Override
	public ArrayList<FlightOpeartion> selectAll(FlightOpeartion fd) {
		ArrayList<FlightOpeartion> al = new ArrayList<>();
		
			Connection con;
			try {
				System.out.println(fd);
				con = myConn.getConn();
				PreparedStatement s = con.prepareStatement("select * from flight where to1 = ? and from1 = ? and date = ?");
				s.setString(1, fd.getTo());
				s.setString(2, fd.getFrom());
				s.setString(3, fd.getDate());
				
				ResultSet rs = s.executeQuery();
                   
					while(rs.next()) {		
						FlightOpeartion d = new FlightOpeartion();
					d.setFlightno(rs.getString("flightno"));
					d.setTo(rs.getString("to1"));
					d.setFrom(rs.getString("from1"));
					d.setDate(rs.getString("date"));
					d.setTime(rs.getString("time"));
					d.setNoOfSeat(rs.getInt("noOfSeat"));
					d.setBookedSeat(rs.getInt("bookedSeat"));
					d.setAmount(rs.getFloat("amount"));
					al.add(d);
					
				}
					
				s.close();
				} catch (ClassNotFoundException e) {
					
					e.printStackTrace();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			
			return al;
	}

}
