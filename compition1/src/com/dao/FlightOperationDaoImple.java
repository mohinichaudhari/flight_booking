package com.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.conn.MyConn;

import com.dto.FlightOpeartion;


public class FlightOperationDaoImple implements FlightOperationDao{
	private MyConn myConn;

	public FlightOperationDaoImple() {
		myConn = new MyConn();
	}

	@Override
	public int insertFlight(FlightOpeartion flightOpeartion) {
		int i=0;
			try {
				Connection con;
				con = myConn.getConn();
				PreparedStatement p = con.prepareStatement(
						"insert into flight(flightno,to1,from1,date,time,noOfSeat,bookedSeat,amount) values(?,?,?,?,?,?,?,?)");
				
				p.setString(1, flightOpeartion.getFlightno());
				p.setString(2, flightOpeartion.getTo());
				p.setString(3, flightOpeartion.getFrom());
				p.setString(4, flightOpeartion.getDate());
				p.setString(5, flightOpeartion.getTime());
				p.setInt(6, flightOpeartion.getNoOfSeat());
				p.setInt(7, flightOpeartion.getBookedSeat());
				p.setFloat(8, flightOpeartion.getAmount());
				
				i =  p.executeUpdate();
				System.out.println("Insert"+i);
				con.close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return i;
	
	}

	@Override
	public int deleteFlight(int flightno) {
		int i=0;
		try {
			Connection con;
			con = myConn.getConn();
			CallableStatement cs =  con.prepareCall("{ call deleteData(?) }");
			cs.setInt(1, flightno);
			i =  cs.executeUpdate();
			System.out.println("Insert"+i);
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return i;
	}

	@Override
	public int updateFlight(FlightOpeartion flightOpeartion) {
		int i=0;
		try {
			Connection con;
			con = myConn.getConn();
			PreparedStatement p = con.prepareStatement(
					"update flight set to1=?,from1=?,date=?,time=?,noOfSeat=?,bookedSeat=?,amount=? where flightno = ? ");
			
			
			p.setString(1, flightOpeartion.getTo());
			p.setString(2, flightOpeartion.getFrom());
			p.setString(3, flightOpeartion.getDate());
			p.setString(4, flightOpeartion.getTime());
			p.setInt(5, flightOpeartion.getNoOfSeat());
			p.setInt(6, flightOpeartion.getBookedSeat());
			p.setFloat(7, flightOpeartion.getAmount());
			p.setString(8, flightOpeartion.getFlightno());
			
			i =  p.executeUpdate();
			System.out.println("Insert"+i);
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return i;
	}

	@Override
	public ArrayList<FlightOpeartion> selectAll(String to, String from) {
		ArrayList<FlightOpeartion> arr = new ArrayList<FlightOpeartion>();
		try {
			Connection con = myConn.getConn();
			PreparedStatement p = con.prepareStatement("Select * from flight where to1 = ? and from1 = ?");
			p.setString(1, to);
			p.setString(2, from);
			ResultSet rs = p.executeQuery();
			while(rs.next()) {
				FlightOpeartion fo = new FlightOpeartion();
				fo.setFlightno(rs.getString("flightno"));
				fo.setTo(rs.getString("to1"));
				fo.setFrom(rs.getString("from1"));
				fo.setDate(rs.getString("date"));
				fo.setTime(rs.getString("time"));
				fo.setNoOfSeat(rs.getInt("noOfSeat"));
				fo.setBookedSeat(rs.getInt("bookedSeat"));
				fo.setAmount(rs.getFloat("amount"));
	
				arr.add(fo);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return arr;
	}

	@Override
	public ArrayList<FlightOpeartion> viewAll() {
		ArrayList<FlightOpeartion> arr = new ArrayList<FlightOpeartion>();
		try {
			Connection con = myConn.getConn();
			PreparedStatement p = con.prepareStatement("Select * from flight");
			ResultSet rs = p.executeQuery();
			while(rs.next()) {
				FlightOpeartion fo1 = new FlightOpeartion();
				fo1.setFlightno(rs.getString("flightno"));
				fo1.setTo(rs.getString("to1"));
				fo1.setFrom(rs.getString("from1"));
				fo1.setDate(rs.getString("date"));
				fo1.setTime(rs.getString("time"));
				fo1.setNoOfSeat(rs.getInt("noOfSeat"));
				fo1.setBookedSeat(rs.getInt("bookedSeat"));
				fo1.setAmount(rs.getFloat("amount"));
	
				arr.add(fo1);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return arr;
	}

	
	@Override
	public FlightOpeartion getFlight(int flightno) {
		FlightOpeartion fo = new FlightOpeartion();
		try {
			Connection con;
			con = myConn.getConn();
			PreparedStatement p = con.prepareStatement("Select * from flight where flightno=?");
			p.setInt(1, flightno);
			ResultSet rs = p.executeQuery();
			if(rs.next()) {
				fo.setFlightno(rs.getString("flightno"));
				fo.setTo(rs.getString("to1"));
				fo.setFrom(rs.getString("from1"));
				fo.setDate(rs.getString("date"));
				fo.setTime(rs.getString("time"));
				fo.setNoOfSeat(rs.getInt("noOfSeat"));
				fo.setBookedSeat(rs.getInt("bookedSeat"));
				fo.setAmount(rs.getFloat("amount"));
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return fo;
	}
}
